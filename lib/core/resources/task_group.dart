import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/core/resources/app_colors.dart';

class TaskGroup extends StatelessWidget {
  TaskGroup({
    this.iconlink,
    this.subtitletext,
    this.iconcolor,
    this.number,
    this.numbercolor,
  });
  String? subtitletext;
  String? iconlink;
  Color? iconcolor;
  String? number;
  Color? numbercolor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: double.infinity,
        height: 63,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.white,
        ),
        child: ListTile(
          subtitle: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              "$subtitletext",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                color: AppColor.text,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          leading: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: iconcolor,
            ),
            child: SvgPicture.asset(
              "$iconlink",
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
              color: iconcolor,
            ),
            child: Text(
              "$number",
              style: TextStyle(color: numbercolor),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
