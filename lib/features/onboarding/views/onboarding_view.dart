import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/core/resources/button_widget.dart';
import 'package:todoapp/features/register%20&%20login/manager/register_cubit.dart';
import 'package:todoapp/features/register%20&%20login/views/register_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OnboardingCubit(),
        child: Builder(
          builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                ButtonWidget(
                  text: "Let's Start",
                  screan: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Register();
                        },
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
