import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoapp/core/resources/app_colors.dart';
import 'package:todoapp/core/resources/str.dart';

class TextfiledWidget extends StatelessWidget {
  TextfiledWidget({
    required this.hint,
    required this.label,
    required this.controler,
    this.onchange,
    this.ispassword,
    super.key,
  });
  TextEditingController controler;
  String label;
  String hint;
  bool? ispassword;
  Function(String)? onchange;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16),
        child: TextField(
          onSubmitted: (value) {
            AppColor.green;
          },
          cursorColor: AppColor.green,
          controller: controler,
          obscureText: ispassword ?? false,
          decoration: InputDecoration(
            labelText: "$label",
            labelStyle: TextStyle(
              color: Color(0xff6E6A7C),
              fontSize: 9,
              fontWeight: FontWeight.w400,
            ),
            hintText: "$hint",
            hintStyle: TextStyle(
              color: Color(0xff6E6A7C),
              fontSize: 14,
              fontWeight: FontWeight.w200,
            ),
            focusColor: AppColor.green,

            fillColor: AppColor.white,
            iconColor: AppColor.white,
            isDense: true,
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
          onChanged: onchange,
        ),
      ),
    );
  }
}
