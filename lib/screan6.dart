import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todoapp/core/resources/app_colors.dart';

class Screan6 extends StatefulWidget {
  const Screan6({super.key});
  @override
  State<Screan6> createState() => _Screan5State();
}

class _Screan5State extends State<Screan6> {
  bool _isSwitch = false;
  bool _check = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(centerTitle: true, color: AppColor.ofwhite),
        scaffoldBackgroundColor: AppColor.ofwhite,
        fontFamily: "LexendDeca",
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Settings",
            style: TextStyle(
              color: AppColor.text,
              fontSize: 19,
              fontWeight: FontWeight.w300,
            ),
          ),
          leading: SvgPicture.asset(
            "assets/image/Arrow1.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 20, bottom: 65),
              child: Row(
                children: [
                  Text(
                    "Notification",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: AppColor.text,
                    ),
                  ),
                  SizedBox(width: 139),
                  Transform.scale(
                    scaleX: 1.5,
                    scaleY: 1,
                    child: Container(
                      width: 83,
                      height: 39.06,
                      child: Switch(
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        value: _isSwitch,
                        inactiveTrackColor: AppColor.ofwhite,
                        onChanged: (bool onvalue) {
                          setState(() {
                            _isSwitch = onvalue;
                          });
                        },
                        activeTrackColor: AppColor.green,
                        inactiveThumbColor: AppColor.hinttext,
                        thumbColor: WidgetStatePropertyAll(AppColor.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    "Enable Cloud",
                    style: TextStyle(
                      color: AppColor.text,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(width: 171),
                  Container(
                    width: 40,
                    height: 40,
                    child: Transform.scale(
                      scale: 2,
                      child: Checkbox(
                        value: _check,
                        onChanged: (bool? value) {
                          setState(() {
                            _check = value!;
                          });
                        },
                        activeColor: AppColor.green,
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
