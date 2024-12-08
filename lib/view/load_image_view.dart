import 'package:flutter/material.dart';

class LoadImageView extends StatelessWidget {
  const LoadImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Image View'),
          backgroundColor: Colors.grey,
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          child: SizedBox(
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.height * .5,
              child: Image.asset("assets/images/image.jpeg")),
        ));
  }
}
