import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/core/resources/app_colors.dart';
import 'package:todoapp/features/onboarding/views/onboarding_view.dart';

class Splach extends StatelessWidget {
  const Splach({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.ofwhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MyHomePage();
                  },
                ),
              );
            },
            child: SizedBox(
              width: double.infinity,
              child: SvgPicture.asset('assets/image/Before_Onboarding.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
