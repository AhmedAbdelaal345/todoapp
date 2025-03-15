import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/core/resources/Gestour_Widget.dart';
import 'package:todoapp/core/resources/str.dart';
import 'package:todoapp/features/screan_2/views/screan2.dart';
import 'package:todoapp/features/screan_4/views/screan4.dart';
import 'package:todoapp/features/screan_5/views/screan5.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestourWidget(
              child1: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/image/freePalastine.png"),
              ),
              screan: Screan4(),
            ),
            SizedBox(width: 11), // Add spacing between the avatar and text
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
                  "${FixedStr.shared}",
                  style: TextStyle(
                    color: Color(0xff24252C),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Spacer(flex: 1),
            GestourWidget(
              child1: SvgPicture.asset("assets/image/Plus-Iconly Pro.svg"),
              screan: Screan3(),
            ),
          ],
        ),
      ),
    );
  }
}
