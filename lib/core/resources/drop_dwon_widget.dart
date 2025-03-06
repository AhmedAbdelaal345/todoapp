import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/core/resources/app_colors.dart';

var value;
double radius = 5;

class DropDwonWidget extends StatefulWidget {
  const DropDwonWidget({super.key});
  @override
  State<DropDwonWidget> createState() => _DropDwonWidgetState();
}

class _DropDwonWidgetState extends State<DropDwonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 19),
      child: Container(
        height: 63,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColor.white,
        ),

        child: DropdownMenu(
          width: double.infinity,
          hintText: "Select Task Group",
          label: Text("Task Group"),
          inputDecorationTheme: InputDecorationTheme(
            disabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            isDense: false,
            alignLabelWithHint: true,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintStyle: TextStyle(
              color: AppColor.hinttext,
              fontSize: 14,
              fontWeight: FontWeight.w200,
            ),
            labelStyle: TextStyle(
              color: AppColor.hinttext,
              fontSize: 14,
              fontWeight: FontWeight.w200,
            ),
          ),
          menuStyle: MenuStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
            backgroundColor: WidgetStatePropertyAll(AppColor.white),
          ),

          dropdownMenuEntries: [
            DropdownMenuEntry(
              value: "Home",
              label: "Home",
              leadingIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  color: AppColor.homecolorouter,
                ),
                width: 35,
                height: 35,
                child: SvgPicture.asset(
                  "assets/image/home.svg",
                  fit: BoxFit.scaleDown,
                  width: 19,
                  height: 20,
                ),
              ),
            ),
            DropdownMenuEntry(
              value: "Work",
              label: "Work",
              leadingIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  color: AppColor.black,
                ),
                width: 35,
                height: 35,
                child: SvgPicture.asset(
                  "assets/image/Bag.svg",
                  fit: BoxFit.scaleDown,
                  width: 19,
                  height: 20,
                ),
              ),
            ),
            DropdownMenuEntry(
              value: Row(
                children: [
                  Text("Personal"),

                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 16),
                    child: Container(
                      color: AppColor.personcolor,
                      width: 35,
                      height: 35,
                      child: SvgPicture.asset(
                        "assets/image/person.svg",
                        fit: BoxFit.scaleDown,
                        width: 19,
                        height: 20,
                      ),
                    ),
                  ),
                ],
              ),
              label: "Personal",
              leadingIcon: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  color: AppColor.personcolor,
                ),
                child: SvgPicture.asset(
                  "assets/image/person.svg",
                  fit: BoxFit.scaleDown,
                  width: 19,
                  height: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
