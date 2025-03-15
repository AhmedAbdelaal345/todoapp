import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/scheduler.dart';
import 'package:todoapp/core/resources/button_widget.dart';
import 'package:todoapp/core/resources/login_image.dart';
import 'package:todoapp/core/resources/str.dart';
import 'package:todoapp/core/resources/textfiled_widget.dart';
import 'package:todoapp/features/screan_2/manager/task_cubit.dart';
import 'package:todoapp/features/screan_2/manager/task_state.dart';
import '../../screan_3/views/screan3.dart';

class Screan3 extends StatelessWidget {
  const Screan3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "LexendDeca",
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffF3F5F4),
          centerTitle: true,
        ),
        scaffoldBackgroundColor: const Color(0xffF3F5F4),
      ),
      home: BlocProvider(
        create: (context) => TaskCubit(),
        child: Builder(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: Text(FixedStr.addTask),
                leading: SvgPicture.asset(
                  FixedStr.arrow1,
                  fit: BoxFit.scaleDown,
                ),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 57,
                      right: 57,
                      top: 46,
                      bottom: 29,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        width: double.minPositive,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: LoginImage(
                          width: double.minPositive,
                          form: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 19,
                    ),
                    child: Column(
                      children: [
                        TextfiledWidget(
                          hint: FixedStr.titleHint,
                          label: FixedStr.titleLabel,
                          controler: context.read<TaskCubit>().titlecontroller,
                          onchange: (value) {
                            FixedStr.onchangeTitle=value;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextfiledWidget(
                          hint: FixedStr.hintdesc,
                          label: FixedStr.labeldesc,
                          controler:
                              context.read<TaskCubit>().descriptioncontroller,
                          onchange: (value) {
                            FixedStr.onchangeDescrib = value;
                          },
                        ),
                      ],
                    ),
                  ),
                  BlocConsumer<TaskCubit, TaskState>(
                    listener: (context, state) {
                      if (state is TaskErrorState) {
                        // Show error message
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(state.error)));
                      } else if (state is TaskSuccessState) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Screan4()),
                        );
                      }
                    },
                    builder: (BuildContext context, TaskState state) {
                      if (state is TaskLoadinState) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      return ButtonWidget(
                        text: "Add Task",
                        screan: () {
                          // Validate title and description before calling onpressedTaskCubit
                          final title =
                              context.read<TaskCubit>().titlecontroller.text;
                          final description =
                              context
                                  .read<TaskCubit>()
                                  .descriptioncontroller
                                  .text;

                          if (title.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Please enter a title"),
                              ),
                            );
                          } else if (description.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Please enter a description"),
                              ),
                            );
                          } else {
                            // Proceed with saving the task
                            context.read<TaskCubit>().onpressedTaskCubit();
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
      ),
    );
  }
}
