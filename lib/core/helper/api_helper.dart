import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:todoapp/core/local/local_data.dart';
import 'package:todoapp/core/network/api_response.dart';
import 'package:todoapp/core/network/end_point.dart';
import 'package:todoapp/core/resources/str.dart';

class ApiHelper {
  // Singleton instance
  static final ApiHelper _apiHelper = ApiHelper._internal();

  factory ApiHelper() {
    return _apiHelper;
  }

  ApiHelper._internal();

  Dio dio = Dio(
    BaseOptions(
      baseUrl: EndPoint.baseurl,
      connectTimeout: Duration(seconds: 10),
      sendTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
    ),
  );

  Future<String?> getAccessTokenUsingRefreshToken(String refreshToken) async {
    final String refreshUrl =
        '${EndPoint.baseurl}${ApiKeys.refreshToken}'; // Ensure this is correct
    try {
      final response = await dio.post(
        refreshUrl,
        data: {
          'refresh_token':
              refreshToken, // Ensure this matches the API's expected payload
        },
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      if (response.statusCode == 200) {
        // Assuming the API returns the new access token in the response
        return response
            .data['access_token']; // Adjust based on your API response structure
      } else {
        // Handle the case where refresh fails (e.g., token expired)
        print('Refresh token failed: ${response.data}');
        return null;
      }
    } catch (e) {
      print('Error refreshing token: $e');
      return null; // Return null if the refresh token request fails
    }
  }

  Future<ApiResponse> getRequest({
    required String endpoint,
    required Map<String, dynamic> data,
    bool isFormData = true,
    bool isAuthried = true,
  }) async {
    try {
      var response = await dio.get(
        endpoint,
        queryParameters: isFormData ? data ?? {} : null,
        options: Options(
          headers: {
            if (isAuthried) "Authorization": "Bearer ${LocalData.accessToken}",
          },
        ),
      );
      return ApiResponse.fromResponse(response);
    } catch (e) {
      return ApiResponse.fromError(e);
    }
  }

  Future<ApiResponse> postRequest({
    required String endpoint,
    required Map<String, dynamic> data,
    bool isFormData = true,
    bool isAuthried = true,
  }) async {
    try {
      var response = await dio.post(
        endpoint,
        data: isFormData ? FormData.fromMap(data ?? {}) : data,
        options: Options(
          headers: {
            if (isAuthried) "Authorization": "Bearer ${LocalData.accessToken}",
          },
        ),
      );

      if (response.statusCode == 200) {
        return ApiResponse.fromResponse(response);
      } else if (response.statusCode == 401) {
        // Unauthorized, token might be expired, try refreshing it
        String? refreshToken = LocalData.refreshToken;
        if (refreshToken == null || refreshToken.isEmpty) {
          return ApiResponse(
            status: false,
            message: 'Refresh token is missing',
            statusCode: 401,
          );
        }

        String? newAccessToken = await getAccessTokenUsingRefreshToken(
          refreshToken,
        );

        if (newAccessToken != null) {
          // Save the new access token for future requests
          LocalData.accessToken = newAccessToken;

          // Retry the request with the new access token
          var retryResponse = await dio.post(
            endpoint,
            data: isFormData ? FormData.fromMap(data ?? {}) : data,
            options: Options(
              headers: {"Authorization": "Bearer $newAccessToken"},
            ),
          );

          return ApiResponse.fromResponse(retryResponse);
        } else {
          // If the refresh token fails, return an error
          return ApiResponse(
            status: false,
            message: 'Failed to refresh token',
            statusCode: 401,
          );
        }
      } else {
        return ApiResponse(
          status: false,
          message: 'Error: ${response.statusCode}',
          statusCode: response.statusCode ?? 500,
        );
      }
    } catch (e) {
      return ApiResponse.fromError(e);
    }
  }

  // Function to make a PUT request
  Future<ApiResponse> putRequest({
    required String endpoint,
    required Map<String, dynamic> data,
    bool isFormData = true,
    bool isAuthried = true,
  }) async {
    try {
      var response = await dio.put(
        endpoint,
        data: isFormData ? FormData.fromMap(data ?? {}) : data,
        options: Options(
          headers: {
            if (isAuthried) "Authorization": "Bearer ${LocalData.accessToken}",
          },
        ),
      );
      return ApiResponse.fromResponse(response);
    } catch (e) {
      return ApiResponse.fromError(e);
    }
  }

  // Function to make a DELETE request (Corrected the name to DELETE)
  Future<ApiResponse> deleteRequest({
    required String endpoint,
    required Map<String, dynamic> data,
    bool isFormData = true,
    bool isAuthried = true,
  }) async {
    try {
      var response = await dio.delete(
        endpoint,
        data: isFormData ? FormData.fromMap(data ?? {}) : data,
        options: Options(
          headers: {
            if (isAuthried) "Authorization": "Bearer ${LocalData.accessToken}",
          },
        ),
      );
      return ApiResponse.fromResponse(response);
    } catch (e) {
      return ApiResponse.fromError(e);
    }
  }
}
