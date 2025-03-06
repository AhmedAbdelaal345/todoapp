import 'package:flutter/material.dart';
import 'package:todoapp/core/resources/app_colors.dart';
import 'package:todoapp/core/resources/button_widget.dart';
import 'screan1.dart'; // Ensure this import is correct

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(fontFamily: "LexendDeca-Regular"),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 36, right: 37.6, top: 90),
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/image/OBJECTS012.png",
              fit: BoxFit.fill,
              width: 301.7,
              height: 342.86,
            ),
          ),
          const SizedBox(height: 60.14),
          Container(
            width: 147,
            height: 60,
            child: const Text(
              "Welcome To Do It !",
              style: TextStyle(
                color: Color(0xff24252C),
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 60),
          ButtonWidget("Let's Start", () {
            onTap:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Screan();
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
