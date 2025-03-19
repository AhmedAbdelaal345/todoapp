import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/core/resources/button_widget.dart';
import 'package:todoapp/core/resources/login_image.dart';
import 'package:todoapp/core/resources/str.dart';
import 'package:todoapp/core/resources/textfiled_widget.dart';
import 'package:todoapp/features/screan_1/views/screan1.dart';
import 'package:todoapp/features/screan_2/manager/task_cubit.dart';
import 'package:todoapp/features/screan_2/manager/task_state.dart';
import 'package:todoapp/features/screan_3/views/screan3.dart';

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
        create: (context) => TaskCubit()..fetchTasks(), // Fetch tasks when the screen loads
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
              body: BlocConsumer<TaskCubit, TaskState>(
                listener: (context, state) {
                  if (state is TaskErrorState) {
                    // Show error message
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.error)),
                    );
                  } else if (state is TaskSuccessState) {
                    // Navigate to Screan4 on success
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screan4()),
                    );
                  } else if (state is TaskEmptyState) {
                    // Navigate to Screan2 when there are no tasks
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Screan2()),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is TaskLoadinState) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is TaskLoadedState) {
                    // Display tasks if available
                    return ListView.builder(
                      itemCount: state.tasks.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(state.tasks[index]['title']),
                          subtitle: Text(state.tasks[index]['description']),
                        );
                      },
                    );
                  } else {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Your existing UI for adding tasks
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
                            child: LoginImage(
                              width: double.minPositive,
                              form: BoxFit.contain,
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
                                  FixedStr.onchangeTitle = value;
                                },
                              ),
                              const SizedBox(height: 20),
                              TextfiledWidget(
                                hint: FixedStr.hintdesc,
                                label: FixedStr.labeldesc,
                                controler: context.read<TaskCubit>().descriptioncontroller,
                                onchange: (value) {
                                  FixedStr.onchangeDescrib = value;
                                },
                              ),
                            ],
                          ),
                        ),
                        ButtonWidget(
                          text: "Add Task",
                          screan: () {
                            final title = context.read<TaskCubit>().titlecontroller.text;
                            final description = context.read<TaskCubit>().descriptioncontroller.text;

                            if (title.isEmpty || description.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Please fill in all fields"),
                                ),
                              );
                            } else {
                              context.read<TaskCubit>().addTask(title, description);
                            }
                          },
                        ),
                      ],
                    );
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}