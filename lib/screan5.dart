import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          appBar: AppBar(
            leading: Container(
              width: 196,
              height: 60,
              padding: EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Screan5();
                      },
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage(
                        "assets/image/freePalastine.png",
                      ),
                    ),
                    // Add spacing between the avatar and text
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello!",
                          style: TextStyle(
                            color: Color(0xff24252C),
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "Ahmed Abdelaal",
                          style: TextStyle(
                            color: Color(0xff24252C),
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 37, left: 20, right: 24),
                child: Container(
                  width: 331,
                  height: 63,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.white,
                  ),
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
                      SizedBox(width: 166),
                      SvgPicture.asset(
                        "assets/image/arrow2.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 37, left: 20, right: 24),
                child: Container(
                  width: 331,
                  height: 63,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.white,
                  ),
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
                      SizedBox(width: 118),
                      SvgPicture.asset(
                        "assets/image/arrow2.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ],
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
