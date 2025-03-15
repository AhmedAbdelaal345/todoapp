import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/core/resources/str.dart';

class LoginImage extends StatelessWidget {
  LoginImage({required this.width, required this.form, super.key});
  BoxFit form;
  double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Image.asset(
          FixedStr.loginImage,
          fit: form,
          height: 298,
          width: double.infinity,
        ),
      ),
    );
  }
}
