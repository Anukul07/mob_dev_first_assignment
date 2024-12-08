import 'package:first_assignment/view/column_ui.dart';
import 'package:first_assignment/view/container_view.dart';
import 'package:first_assignment/view/dashboard_view.dart';
import 'package:first_assignment/view/load_image_view.dart';
import 'package:first_assignment/view/show_snackbar_view.dart';
import 'package:first_assignment/view/student_details_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ShowSnackbarView(),
      home: LoadImageView(),
    );
  }
}
