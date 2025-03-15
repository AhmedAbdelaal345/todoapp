import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/core/resources/Gestour_Widget.dart';
import 'package:todoapp/core/resources/app_colors.dart';
import 'package:todoapp/core/resources/button_widget.dart';
import 'package:todoapp/core/resources/constant_number.dart';
import 'package:todoapp/core/resources/login_image.dart';
import 'package:todoapp/core/resources/str.dart';
import 'package:todoapp/core/resources/textfiled_widget.dart';
import 'package:todoapp/features/register%20&%20login/manager/register_cubit.dart';
import 'package:todoapp/features/register%20&%20login/manager/register_state.dart';
import 'package:todoapp/features/register%20&%20login/views/login_view.dart';
import '../../screan_1/views/screan1.dart';
import 'package:flutter/scheduler.dart'; // Import this package

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF3F5F4),
        fontFamily: 'LexendDeca',
      ),
      home: BlocProvider(
        create: (context) => OnboardingCubit(),
        child: Scaffold(
          body: Builder(
            builder: (context) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    LoginImage(width:double.infinity ,form: BoxFit.cover),
                    SizedBox(height: 23),
                    TextfiledWidget(
                      hint: FixedStr.hint,
                      label: FixedStr.label,
                      onchange: (value) {
                        FixedStr.shared = value;
                      },
                      controler:
                          OnboardingCubit.get(
                            context,
                          ).namecontroller, // Name field
                    ),
                    SizedBox(height: ConstantNumber.h10),
                    TextfiledWidget(
                      hint: FixedStr.hintpass,
                      label: FixedStr.labelpass,
                      ispassword: true,
                       onchange: (value) {
                        FixedStr.shared = value;
                      },
                      controler:
                          OnboardingCubit.get(
                            context,
                          ).passwordcontroller, // Password field
                    ),
                    SizedBox(height: ConstantNumber.h10),
                    TextfiledWidget(
                      hint: FixedStr.hintpass,
                      label: FixedStr.labelconpass,
                      ispassword: true,
                      controler:
                          OnboardingCubit.get(
                            context,
                          ).conforimcontroller, // Confirm password field
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: ConstantNumber.h23,
                        bottom: ConstantNumber.h41,
                      ),
                      child: BlocConsumer<OnboardingCubit, OnboardingState>(
                        listener: (context, state) {
                          print(state.toString());
                        },
                        builder: (context, state) {
                          if (state is OnboardingLoadingState) {
                            return Center(child: CircularProgressIndicator());
                          } else if (state is OnboardingErrorState) {
                            // Use SchedulerBinding to show SnackBar after the frame is rendered
                            SchedulerBinding.instance.addPostFrameCallback((_) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(state.error)),
                              );
                            });
                          } else if (state is OnboardingSucessState) {
                            // Use SchedulerBinding to navigate after the frame is rendered
                            SchedulerBinding.instance.addPostFrameCallback((_) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Success")),
                              );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Screan2(),
                                ),
                              );
                            });
                          } // Default button
                          return ButtonWidget(
                            text: "Register",
                            screan: () {
                              OnboardingCubit.get(
                                context,
                              ).onboardingOnpressed();
                            },
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: ConstantNumber.h157,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FixedStr.logintext,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: AppColor.hinttext,
                            ),
                          ),
                          SizedBox(width: 5),
                          GestourWidget(
                            screan: Login(),
                            child1: Text(
                              FixedStr.login,
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColor.text,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
