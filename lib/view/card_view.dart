import 'package:first_assignment/common/my_snackbar.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 1; i < 10; i++)
            GestureDetector(
              onTap: () {
                showMySnackBar(context: context, message: "Tapped Card $i");
              },
              child: MyCard(
                title: "Card $i",
                colorSelection: i % 2 == 0 ? Colors.blue : Colors.amber,
              ),
            ),
        ],
      ),
    )));
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.title,
    required this.colorSelection,
  });

  final String title;
  final Color colorSelection;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        elevation: 5,
        color: colorSelection,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
