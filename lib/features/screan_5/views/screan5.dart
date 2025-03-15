import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todoapp/core/resources/app_colors.dart';
import 'package:todoapp/core/resources/button_widget.dart';
import 'package:todoapp/core/resources/constant_number.dart';
import 'package:todoapp/core/resources/login_image.dart';
import 'package:todoapp/core/resources/str.dart';
import 'package:todoapp/core/resources/textfiled_widget.dart';
import 'package:todoapp/features/screan_1/views/screan1.dart';
import 'package:todoapp/features/screan_2/manager/task_cubit.dart';
import 'package:todoapp/features/screan_5/manager/user_cubit.dart';
import 'package:todoapp/features/screan_5/manager/user_state.dart';
import 'package:todoapp/features/screan_5/views/change.dart';

class Screan5 extends StatelessWidget {
  const Screan5({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: Scaffold(
        body: Builder(
          builder: (context) {
            return Column(
              children: [
                LoginImage(width: double.infinity, form: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.only(
                    top: ConstantNumber.h23,
                    left: ConstantNumber.h23,
                    right: ConstantNumber.h20,
                  ),
                  child: TextfiledWidget(
                    label: FixedStr.userNameLabel,
                    hint: FixedStr.userNameHint,
                    controler:
                        UserCubit().get(context).username, // Correct access
                    ispassword: false,
                  ),
                ),
                SizedBox(height: ConstantNumber.h20),
                BlocConsumer<UserCubit, UserState>(
                  listener: (context, state) {
                    if (state is UserErrorState) {
                      SchedulerBinding.instance.addPostFrameCallback((_) {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(state.error)));
                      });
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
                      text: FixedStr.update,
                      screan: () {
                        final userName =
                            context.read<UserCubit>().username.text;
                        if (userName.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Please enter an User name"),
                            ),
                          );
                        } else {
                          // Proceed with saving the task
                          UserCubit().get(context).onpressedCubitUser();
                        }
                      },
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
