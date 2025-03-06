import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/core/resources/app_colors.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(this.text, this.screan);
  String text;
  VoidCallback screan;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 48.01,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 4, offset: Offset(0, 4), color: AppColor.green),
        ],
      ),
      child: ElevatedButton(
        onPressed: screan,
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColor.green),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
