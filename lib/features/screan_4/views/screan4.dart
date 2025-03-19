import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/core/resources/Top.dart';
import 'package:todoapp/core/resources/app_colors.dart';
import 'package:todoapp/core/resources/constant_number.dart';
import 'package:todoapp/core/resources/str.dart';
import 'package:todoapp/features/screan_2/manager/task_cubit.dart';
import 'package:todoapp/features/screan_2/manager/task_state.dart';

class Screan4 extends StatelessWidget {
  Screan4({super.key});
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: AppColor.ofwhite),
        scaffoldBackgroundColor: AppColor.ofwhite,
        fontFamily: "LexendDeca",
      ),
      home: BlocProvider(
        create: (context) => TaskCubit()..fetchTasks(), // Fetch tasks when the screen loads
        child: Scaffold(
          body: BlocBuilder<TaskCubit, TaskState>(
            builder: (context, state) {
              if (state is TaskLoadinState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is TaskErrorState) {
                return Center(child: Text(state.error));
              } else if (state is TaskEmptyState) {
                return const Center(child: Text("No tasks found"));
              } else if (state is TaskLoadedState) {
                return Column(
                  children: [
                    Top(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 54, bottom: 31),
                      child: Row(
                        children: [
                          Text(
                            FixedStr.tasks,
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(width: 60),
                          Container(
                            width: 14,
                            height: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.personcolor,
                            ),
                            child: Text(
                              state.tasks.length.toString(), // Display the number of tasks
                              style: TextStyle(color: AppColor.green),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: state.tasks.length,
                        itemBuilder: (context, i) {
                          final task = state.tasks[i];
                          return Padding(
                            padding: const EdgeInsets.only(
                              left: ConstantNumber.h20,
                              right: ConstantNumber.h20,
                            ),
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(ConstantNumber.h20),
                                color: AppColor.personcolor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 13),
                                      child: Row(
                                        children: [
                                          Text(
                                            task['title'], // Display task title
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.hinttext,
                                            ),
                                          ),
                                          Spacer(),
                                          SizedBox(
                                            width: 70,
                                            height: 30,
                                            child: Text(
                                              now.toString(),
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: AppColor.hinttext,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      task['description'], // Display task description
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: AppColor.text,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(child: Text("Unknown state"));
              }
            },
          ),
        ),
      ),
    );
  }
}