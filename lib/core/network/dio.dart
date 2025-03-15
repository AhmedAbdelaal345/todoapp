import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:todoapp/core/resources/str.dart';

class DioClient {
  // Singleton instance
  static final DioClient _instance = DioClient._internal();

  // Dio instance
  late Dio _dio;

  // Private constructor
  DioClient._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: FixedStr.baseurl, // Replace with your base URL
        connectTimeout: const Duration(seconds: 10), // Connection timeout
        receiveTimeout: const Duration(seconds: 10), // Receive timeout
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // Add interceptors for logging (optional)
    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          request: true,
          requestBody: true,
          responseBody: true,
          error: true,
        ),
      );
    }
  }

  // Get the singleton instance
  factory DioClient() {
    return _instance;
  }

  // Getter for Dio instance
  Dio get dio => _dio;
}