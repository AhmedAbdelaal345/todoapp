import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todoapp/core/resources/app_colors.dart';
import 'package:todoapp/core/resources/constant_number.dart';
import 'package:todoapp/core/resources/str.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          FixedStr.settingText,
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w300,
            color: AppColor.text,
          ),
        ),
        leading: SvgPicture.asset(FixedStr.arrow1, fit: BoxFit.scaleDown),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 22, top: 72),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              FixedStr.language,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: AppColor.text,
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: AppColor.contain,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
              ),
              alignment: Alignment.center,
              width: ConstantNumber.h51,
              height: ConstantNumber.h36,
              child: Text(
                FixedStr.ar,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: AppColor.text,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColor.green,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              alignment: Alignment.center,
              width: ConstantNumber.h51,
              height: ConstantNumber.h36,
              child: Text(
                FixedStr.en,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: AppColor.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
