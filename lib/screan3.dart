import 'dart:ui';
import 'package:todoapp/core/resources/button_widget.dart';
import 'package:todoapp/core/resources/drop_dwon_widget.dart';

import 'screan4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'core/resources/app_colors.dart';

const List<String> mylist = ["Home", "Work", "Personal"];

class Screan3 extends StatelessWidget {
  const Screan3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "LexendDeca",
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffF3F5F4),
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Color(0xffF3F5F4),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Add Task"),
          leading: SvgPicture.asset(
            "assets/image/Arrow1.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
        body: Column(
          children: [
            DropDwonWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 19),
              child: Container(
                width: double.infinity,
                height: 63,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColor.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextFormField(
                      showCursor: false,
                      decoration: InputDecoration(
                        hintText: "Enter Task Name",
                        alignLabelWithHint: true,
                        labelText: "Task Name",
                        labelStyle: TextStyle(
                          color: AppColor.hinttext,
                          fontFamily: "LexendDeca",
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                        ),
                        hintStyle: TextStyle(
                          color: AppColor.hinttext,
                          fontFamily: "LexendDeca",
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                        ),
                        fillColor: AppColor.white,
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 19),
              child: Container(
                width: double.infinity,
                height: 142,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColor.white,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: TextField(
                    showCursor: false,
                    textAlign: TextAlign.start,

                    decoration: InputDecoration(
                      hintText: "Enter Task Description",
                      labelText: "Description",
                      labelStyle: TextStyle(
                        color: AppColor.hinttext,
                        fontFamily: "LexendDeca",
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                      ),
                      hintStyle: TextStyle(
                        color: AppColor.hinttext,
                        fontFamily: "LexendDeca",
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                      ),
                      fillColor: AppColor.white,
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            ButtonWidget("Save", () {
              onTap:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Screan4();
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
