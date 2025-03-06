import 'package:flutter/material.dart';
import 'package:todoapp/core/resources/app_colors.dart';
import 'package:todoapp/core/resources/button_widget.dart';
import 'package:todoapp/screan2.dart';

class Screan extends StatelessWidget {
  const Screan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xffF3F5F4)),
      home: Scaffold(
        body: Column(
          children: [
            Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Image.asset(
                "assets/image/freePalastine.png",
                fit: BoxFit.fitHeight,
                height: 446,
              ),
            ),
            SizedBox(height: 61),
            Container(
              width: 331,
              height: 63,
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: TextField(
                  onChanged: (value) {},

                  decoration: InputDecoration(
                    labelText: "Your Name",
                    labelStyle: TextStyle(
                      color: Color(0xff6E6A7C),
                      fontSize: 9,
                      fontWeight: FontWeight.w400,
                    ),
                    hintText: "Enter Your Name",
                    hintStyle: TextStyle(
                      color: Color(0xff6E6A7C),
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                    ),
                    hoverColor: Colors.white,

                    fillColor: Colors.white,
                    iconColor: AppColor.white,
                    isDense: true,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
            ButtonWidget("Save", () {
              onTap:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Screan2();
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
