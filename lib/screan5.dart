import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/core/resources/Top.dart';
import 'package:todoapp/screan1.dart';
import 'package:todoapp/screan6.dart';

import 'core/resources/app_colors.dart';
import 'screan3.dart';

class Screan5 extends StatelessWidget {
  const Screan5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: AppColor.ofwhite),
        scaffoldBackgroundColor: AppColor.ofwhite,
        fontFamily: "LexendDeca",
      ),
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Top(),
              Padding(
                padding: const EdgeInsets.only(top: 37, left: 20, right: 24),
                child: Container(
                  width: double.infinity,
                  height: 63,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.white,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Screan();
                          },
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        SvgPicture.asset(
                          "assets/image/Profile.svg",
                          fit: BoxFit.scaleDown,
                        ),
                        SizedBox(width: 16),
                        Text(
                          "Update Profile",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColor.text,
                          ),
                        ),
                        Spacer(flex: 1),
                        Padding(
                          padding: const EdgeInsets.only(right: 21),
                          child: SvgPicture.asset(
                            "assets/image/arrow2.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 37, left: 20, right: 24),
                child: Container(
                  width: double.infinity,
                  height: 63,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.white,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Screan6();
                          },
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        SvgPicture.asset(
                          "assets/image/Setting.svg",
                          fit: BoxFit.scaleDown,
                        ),
                        SizedBox(width: 16),
                        Text(
                          "Settings",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColor.text,
                          ),
                        ),
                        Spacer(flex: 1),

                        Padding(
                          padding: const EdgeInsets.only(right: 21),
                          child: SvgPicture.asset(
                            "assets/image/arrow2.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
