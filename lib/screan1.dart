import 'package:flutter/material.dart';
import 'package:todoapp/core/resources/app_colors.dart';
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
              child: TextField(
                onChanged: (value) {},

                decoration: InputDecoration(
                  labelText: "Your Name",
                  constraints: BoxConstraints.expand(width: 331, height: 63),
                  hintText: "Enter Your Name",
                  hoverColor: Colors.white,

                  fillColor: Colors.white,
                  iconColor: AppColor.white,
                  isDense: true,
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
            TextButton(
              onPressed: () {
                // Ensure that this context is valid for navigation
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            const Screan2(), // Ensure Screan is defined in screan1.dart
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
          ],
        ),
      ),
    );
  }
}
