import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/core/resources/app_colors.dart';

class ContainerTask extends StatelessWidget {
  ContainerTask({
    this.titletask,
    this.backcolor,
    this.iconlink,
    this.iconcolor,
    this.subtitletask,
    this.titlecolor,
    this.subtitlecolor,
  });
  String? titletask;
  String? subtitletask;
  Color? titlecolor;
  Color? subtitlecolor;
  Color? backcolor;
  Color? iconcolor;
  String? iconlink;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backcolor,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 234,
      height: 90,
      child: ListTile(
        isThreeLine: true,
        subtitle: Text(
          "$subtitletask",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color:subtitlecolor,
          ),
        ),
        title: Text(
          "$titletask",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color:titlecolor,
          ),
        ),
        trailing: Container(
          width: 22,
          height: 22,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: iconcolor,
          ),
          child: SvgPicture.asset(
            "$iconlink",
            color: AppColor.white,
            fit: BoxFit.scaleDown,
          ),
        ), // Fix asset path
      ),
    );
  }
}
