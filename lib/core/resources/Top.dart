import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/core/resources/Gestour_Widget.dart';
import 'package:todoapp/screan3.dart';
import 'package:todoapp/screan5.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [ 
                    GestourWidget(CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage(
                            "assets/image/freePalastine.png",
                          ),
                        ),
                        Screan5())
                        ,SizedBox(
                          width: 11,
                        ), // Add spacing between the avatar and text
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
                        Spacer(flex: 1),
                       GestourWidget(SvgPicture.asset("assets/image/Plus-Iconly Pro.svg"),Screan3())
                  ],
                ),
              ),
            );
  }
}