import 'package:first_assignment/view/calculator_app.dart';
import 'package:first_assignment/view/card_view.dart';
import 'package:first_assignment/view/user_details_view.dart';
import 'package:first_assignment/view/user_output_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      // routes: {
      //   "/": (context) => const UserDetailsView(),
      //   "/output": (context) => const UserOutputView()
      // },
      home: CalculatorApp(),
    );
  }
}
