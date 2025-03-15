import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/core/resources/Gestour_Widget.dart';
import 'package:todoapp/core/resources/Top.dart';
import 'package:todoapp/core/resources/app_colors.dart';
import 'package:todoapp/core/resources/profile_group.dart';
import 'package:todoapp/core/resources/str.dart';
import 'package:todoapp/features/register%20&%20login/views/login_view.dart';
import 'package:todoapp/features/register%20&%20login/views/register_view.dart';
import 'package:todoapp/features/screan_5/views/change.dart';
import 'package:todoapp/features/screan_5/views/settings.dart';
import '../../screan_1/views/screan1.dart';
import '../../screan_5/views/screan5.dart';
import '../../screan_2/views/screan2.dart';

class Screan4 extends StatelessWidget {
  const Screan4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Top(),
            ProfileGroup(
              text: FixedStr.profileText,
              path: FixedStr.profileImage,
              screan: Screan5(),
            ),
            ProfileGroup(
              text: FixedStr.changePass,
              path: FixedStr.lock,
              screan: ChangePass(),
            ),
            ProfileGroup(
              text: FixedStr.settingText,
              path: FixedStr.settingSvg,
              screan: Settings(),
            ),
          ],
        ),
      ),
    );
  }
}
