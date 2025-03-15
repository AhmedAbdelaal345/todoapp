import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/core/resources/button_widget.dart';
import 'package:todoapp/core/resources/constant_number.dart';
import 'package:todoapp/core/resources/login_image.dart';
import 'package:todoapp/core/resources/str.dart';
import 'package:todoapp/core/resources/textfiled_widget.dart';
import 'package:todoapp/features/screan_1/views/screan1.dart';
import 'package:todoapp/features/screan_5/manager/pass_cubit.dart';
import 'package:todoapp/features/screan_5/manager/user_cubit.dart';
import 'package:todoapp/features/screan_5/manager/user_state.dart';

class ChangePass extends StatelessWidget {
  const ChangePass({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PassCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Column(
              children: [
                LoginImage(width: double.infinity, form: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.only(
                    top: ConstantNumber.h23,
                    left: ConstantNumber.h23,
                    right: ConstantNumber.h20,
                  ),
                  child: TextfiledWidget(
                    label: FixedStr.oldpass,
                    hint: FixedStr.hintpass,
                    controler:
                        PassCubit()
                            .get(context)
                            .oldPassControl, // Correct access
                    ispassword: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: ConstantNumber.h10,
                    left: ConstantNumber.h23,
                    right: ConstantNumber.h20,
                  ),
                  child: TextfiledWidget(
                    label: FixedStr.newPassword,
                    hint: FixedStr.hintpass,
                    controler:
                        PassCubit()
                            .get(context)
                            .newPassControl, // Correct access
                    ispassword: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: ConstantNumber.h10,
                    left: ConstantNumber.h23,
                    right: ConstantNumber.h20,
                    bottom: ConstantNumber.h23,
                  ),
                  child: TextfiledWidget(
                    label: FixedStr.labelconpass,
                    hint: FixedStr.hintpass,
                    controler:
                        PassCubit()
                            .get(context)
                            .confirmassControl, // Correct access
                    ispassword: false,
                  ),
                ),
                BlocConsumer<PassCubit, UserState>(
                  listener: (context, state) {
                    if (state is UserErrorState) {
                      // Show error message
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text(state.error)));
                    } else if (state is UserSuccessState) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screan2()),
                      );
                    }
                  },
                  builder: (context, state) {
                    if (state is UserLoadinState) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return ButtonWidget(
                      text: "Add Task",
                      screan: () {
                        // Validate title and description before calling onpressedTaskCubit
                        final newPassword =
                            context.read<PassCubit>().newPassControl.text;
                        final oldPassWord =
                            context.read<PassCubit>().oldPassControl.text;
                        final confrimPassWord =
                            context.read<PassCubit>().confirmassControl.text;

                        if (oldPassWord.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Please enter an Old Password"),
                            ),
                          );
                        } else if (newPassword.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Please enter an NewPassword"),
                            ),
                          );
                        } else if (confrimPassWord.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Please enter a Confirm Password"),
                            ),
                          );
                        } else {
                          // Proceed with saving the task
                          context.read<PassCubit>().onpressedCubitPassword();
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
