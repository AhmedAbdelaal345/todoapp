import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/core/resources/app_colors.dart';
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
        appBar: AppBar(
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Screan3();
                    },
                  ),
                );
              },
              child: SvgPicture.asset("assets/image/Plus-Iconly Pro.svg"),
            ),
          ],
          leading: InkWell(
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
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage("assets/image/freePalastine.png"),
                ),
                SizedBox(width: 10), // Add spacing between the avatar and text
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 34, left: 20, right: 20),
                width: 335,
                height: 135,
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
                          SizedBox(width: 85),
                          Container(
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.only(left: 20),
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
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 234,
                      height: 90,
                      child: ListTile(
                        isThreeLine: true,
                        subtitle: Text(
                          "Add New Features",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColor.white,
                          ),
                        ),
                        title: Text(
                          "Work Task",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: AppColor.white,
                          ),
                        ),
                        trailing: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColor.green,
                          ),
                          child: SvgPicture.asset(
                            "assets/image/Bag_White.svg",
                            color: AppColor.white,
                            fit: BoxFit.scaleDown,
                          ),
                        ), // Fix asset path
                      ),
                    ),
                    SizedBox(width: 27),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.personcolor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 234,
                      height: 90,
                      child: ListTile(
                        isThreeLine: true,
                        subtitle: Text(
                          "Improve my English skills by trying to speek",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColor.white,
                          ),
                        ),
                        title: Text(
                          "Personal Task",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: AppColor.white,
                          ),
                        ),
                        trailing: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColor.green,
                          ),
                          child: SvgPicture.asset(
                            "assets/image/person1.svg",
                            fit: BoxFit.scaleDown,

                            color: AppColor.personcolor,
                          ),
                        ), // Fix asset path
                      ),
                    ),
                    SizedBox(width: 27),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.homecolorouter,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 234,
                      height: 90,
                      child: ListTile(
                        isThreeLine: true,
                        subtitle: Text(
                          "Add new feature for Do It app and commit it",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor.black,
                          ),
                        ),
                        title: Text(
                          "Home Task",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.hinttext,
                          ),
                        ),
                        trailing: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColor.homecolor,
                          ),
                          child: SvgPicture.asset(
                            "assets/image/home.svg",
                            fit: BoxFit.scaleDown,
                            width: 12,
                            height: 12,
                            color: AppColor.homecolorouter,
                          ),
                        ), // Fix asset path
                      ),
                    ),
                  ],
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
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: 335,
                  height: 63,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.white,
                  ),
                  child: ListTile(
                    subtitle: Text(
                      "Personal Task",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: AppColor.text,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    leading: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColor.personcolor,
                      ),
                      child: SvgPicture.asset(
                        "assets/image/person.svg",
                        fit: BoxFit.scaleDown,
                        width: 19,
                        height: 20,
                      ),
                    ),
                    trailing: Container(
                      width: 22,
                      height: 23,
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
                  ),
                ),
              ),
              SizedBox(height: 17),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: 335,
                  height: 63,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.white,
                  ),
                  child: ListTile(
                    subtitle: Text(
                      "Home Task",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: AppColor.text,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    leading: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColor.homecolorouter,
                      ),
                      child: SvgPicture.asset(
                        "assets/image/home.svg",
                        fit: BoxFit.scaleDown,
                        width: 19,
                        height: 20,
                      ),
                    ),
                    trailing: Container(
                      width: 22,
                      height: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColor.homecolorouter,
                      ),
                      child: Text(
                        "3",
                        style: TextStyle(color: AppColor.homecolor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 17),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: 335,
                  height: 63,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.white,
                  ),
                  child: ListTile(
                    subtitle: Text(
                      "Work Task",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: AppColor.text,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    leading: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColor.black,
                      ),
                      child: SvgPicture.asset(
                        "assets/image/Bag_White.svg",
                        fit: BoxFit.scaleDown,
                        width: 19,
                        height: 20,
                      ),
                    ),
                    trailing: Container(
                      width: 22,
                      height: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColor.black,
                      ),
                      child: Text(
                        "1",
                        style: TextStyle(color: AppColor.white),
                        textAlign: TextAlign.center,
                      ),
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
