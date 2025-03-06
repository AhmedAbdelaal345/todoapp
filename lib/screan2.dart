import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/core/resources/Top.dart';
import 'package:todoapp/screan5.dart';
import 'screan3.dart';

class Screan2 extends StatelessWidget {
  const Screan2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "LexendDeca",
        scaffoldBackgroundColor: Color(0xffF3F5F4),
      ),
      home: Scaffold(
        body: Column(
          children: [
            Top(),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 159, left: 25),
                width: 325,
                height: 60,
                alignment: Alignment.center,
                child: Text(
                  "There are no tasks yet, Press the button to add a New Task",
                  style: TextStyle(
                    color: Color(0xff24252C),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: 300, // Add a width
              height: 300, // Add a height
              child: SvgPicture.asset(
                "assets/image/page_1.svg",
                fit: BoxFit.contain, // Use BoxFit.contain for better scaling
              ),
            ),
          ],
        ),
      ),
    );
  }
}
