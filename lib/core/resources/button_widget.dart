import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/core/resources/app_colors.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({required this.text, required this.screan, bool? isEnabledt});
  String text;
  VoidCallback screan;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, right: 22),
      child: Container(
        height: 48.01,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              offset: Offset(0, 4),
              color: AppColor.green,
            ),
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
      ),
    );
  }
}
