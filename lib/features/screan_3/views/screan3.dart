import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/core/resources/Top.dart';
import 'package:todoapp/core/resources/app_colors.dart';
import 'package:todoapp/core/resources/constant_number.dart';
import 'package:todoapp/core/resources/str.dart';

class Screan4 extends StatelessWidget {
  Screan4({super.key});
  DateTime now = DateTime.now();

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
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 54, bottom: 31),
              child: Row(
                children: [
                  Text(
                    FixedStr.tasks,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(width: 60),
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
           
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: ConstantNumber.h20,
                      right: ConstantNumber.h20,
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 10,
                      ), // Add margin between items
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ConstantNumber.h20),
                        color: AppColor.personcolor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 13),
                              child: Row(
                                children: [
                                  Text(
                                    "${FixedStr.onchangeTitle}",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.hinttext,
                                    ),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width: 70,
                                    height: 30,
                                    child: Text(
                                      now.toString(),
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.hinttext,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ), // Add spacing between title and description
                            Text(
                              "${FixedStr.onchangeDescrib}",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: AppColor.text,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
