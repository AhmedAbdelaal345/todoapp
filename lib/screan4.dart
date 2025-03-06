import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/core/resources/Top.dart';
import 'package:todoapp/core/resources/app_colors.dart';
import 'package:todoapp/core/resources/container__task.dart';
import 'package:todoapp/core/resources/task_group.dart';
import 'screan3.dart';
import 'screan5.dart';

class Screan4 extends StatelessWidget {
  const Screan4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: AppColor.ofwhite),
        scaffoldBackgroundColor: AppColor.ofwhite,
        fontFamily: "LexendDeca",
      ),
      home: Scaffold(
        body: Column(
          children: [
            Top(),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 34, left: 20, right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColor.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18, left: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 140,
                            height: 36,
                            child: Text(
                              "Your today’s tasks almost done!",
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Text(
                                "80",
                                style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "%",
                                style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Spacer(flex: 1),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 22,
                                  bottom: 18,
                                ),

                                child: Container(
                                  width: 121,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: AppColor.white,
                                  ),
                                  padding: EdgeInsets.only(top: 9),
                                  child: Text(
                                    "View Tasks",
                                    style: TextStyle(
                                      color: AppColor.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 26),
                    child: Row(
                      children: [
                        Text(
                          "In Progress",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(width: 60),
                        Container(
                          width: 14,
                          height: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColor.personcolor,
                          ),
                          child: Text(
                            "5",
                            style: TextStyle(color: AppColor.green),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 23),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Row(
                        children: [
                          ContainerTask(
                            backcolor: AppColor.black,
                            subtitletask: "Add New Features",
                            titletask: "Work Task",
                            iconlink: "assets/image/Bag_White.svg",
                            iconcolor: AppColor.green,
                            titlecolor: AppColor.white,
                            subtitlecolor: AppColor.white,
                          ),
                          SizedBox(width: 27),
                          ContainerTask(
                            backcolor: AppColor.personcolor,
                            subtitletask:
                                "Improve my English skills by trying to speek",
                            titletask: "Personal Task",
                            iconcolor: AppColor.green,
                            iconlink: "assets/image/person1.svg",
                            subtitlecolor: AppColor.text,
                            titlecolor: AppColor.hinttext,
                          ),
                          SizedBox(width: 27),
                          ContainerTask(
                            backcolor: AppColor.homecolorouter,
                            iconcolor: AppColor.homecolor,
                            subtitlecolor: AppColor.black,
                            subtitletask:
                                "Add new feature for Do It app and commit it",
                            titlecolor: AppColor.hinttext,
                            titletask: "Home Task",
                            iconlink: "assets/image/home.svg",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 26),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Task Groups",
                        style: TextStyle(
                          color: AppColor.text,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 23),
                  TaskGroup(
                    iconcolor: AppColor.personcolor,
                    iconlink: "assets/image/person.svg",
                    number: "5",
                    subtitletext: "Personal Task",
                  ),
                  SizedBox(height: 17),
                  TaskGroup(
                    subtitletext: "Home Task",
                    iconcolor: AppColor.homecolorouter,
                    iconlink: "assets/image/home.svg",
                    number: "3",
                    numbercolor: AppColor.homecolor,
                  ),
                  SizedBox(height: 17),
                  TaskGroup(
                    iconcolor: AppColor.black,
                    subtitletext: "Work Task",
                    iconlink: "assets/image/Bag_White.svg",
                    number: "1",
                    numbercolor: AppColor.white,
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
