import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/core/resources/Gestour_Widget.dart';
import 'package:todoapp/core/resources/app_colors.dart';
import 'package:todoapp/core/resources/str.dart';

class ProfileGroup extends StatelessWidget {
   ProfileGroup({required this.text,required this.path ,required this.screan,super.key});
  Widget screan;
  String path;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.only(top: 37, left: 20, right: 24),
                child: Container(
                  width: double.infinity,
                  height: 63,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.white,
                  ),
                  child: GestourWidget(
                    screan: screan,
                    child1: Row(
                      children: [
                        SizedBox(width: 20),
                        SvgPicture.asset(
                        path,
                          fit: BoxFit.scaleDown,
                        ),
                        SizedBox(width: 16),
                        Text(
                          text,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColor.text,
                          ),
                        ),
                        Spacer(flex: 1),
                        Padding(
                          padding: const EdgeInsets.only(right: 21),
                          child: SvgPicture.asset(
                            FixedStr.arrowSvg,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
  }
}