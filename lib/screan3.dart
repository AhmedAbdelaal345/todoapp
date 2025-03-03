import 'dart:ui';
import 'screan4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'core/resources/app_colors.dart';

List<String> mylist = ["Home", "Work", "Personal"];

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
            Container(
              width: 331,
              height: 63,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(left: 80, right: 19, top: 107),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.white,
              ),

              child: DropdownMenu(
                width: 331,
                hintText: "Select Task Group",
                label: Text("Task Group"),
                inputDecorationTheme: InputDecorationTheme(
                  disabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  isDense: false,
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(
                    color: AppColor.hinttext,
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                  ),
                  labelStyle: TextStyle(
                    color: AppColor.hinttext,
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                menuStyle: MenuStyle(
                  backgroundColor: WidgetStatePropertyAll(AppColor.white),
                ),

                dropdownMenuEntries: [
                  DropdownMenuEntry(
                    value: "Home",
                    label: "Home",
                    leadingIcon: Container(
                      color: AppColor.homecolorouter,
                      width: 35,
                      height: 35,
                      child: SvgPicture.asset(
                        "assets/image/home.svg",
                        fit: BoxFit.scaleDown,
                        width: 19,
                        height: 20,
                      ),
                    ),
                  ),
                  DropdownMenuEntry(
                    value: "Work",
                    label: "Work",
                    leadingIcon: Container(
                      color: AppColor.black,
                      width: 35,
                      height: 35,
                      child: SvgPicture.asset(
                        "assets/image/Bag.svg",
                        fit: BoxFit.scaleDown,
                        width: 19,
                        height: 20,
                      ),
                    ),
                  ),
                  DropdownMenuEntry(
                    value: "Personal",
                    label: "Personal",
                    leadingIcon: Container(
                      color: AppColor.personcolor,
                      width: 35,
                      height: 35,
                      child: SvgPicture.asset(
                        "assets/image/person.svg",
                        fit: BoxFit.scaleDown,
                        width: 19,
                        height: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 80, right: 19, top: 19),
              width: 331,
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
                        gapPadding: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 80, right: 19, top: 19),
              width: 331,
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
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 36, left: 60),
              child: TextButton(
                onPressed: () {
                  // Ensure that this context is valid for navigation
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) =>
                              const Screan4(), // Ensure Screan is defined in screan1.dart
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color(0xff149954),
                  ),
                ),
                child: Container(
                  width: 331,
                  height: 48.01,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Center(
                    child: Text(
                      "Save",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
