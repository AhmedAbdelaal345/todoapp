import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/core/resources/app_colors.dart';
import 'package:todoapp/core/resources/button_widget.dart';
import 'package:todoapp/features/onboarding/views/splac.dart';
import 'package:todoapp/features/onboarding/views/onboarding_view.dart';
import 'package:todoapp/features/screan_5/manager/user_cubit.dart';
import 'package:todoapp/features/screan_5/views/screan5.dart';
import 'features/register & login/views/register_view.dart'; // Ensure this import is correct

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(fontFamily: "LexendDeca-Regular"),
      home: const Splach(),
    );
  }
}
