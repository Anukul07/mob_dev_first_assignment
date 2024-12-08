import 'package:flutter/material.dart';

class ColumnUi extends StatelessWidget {
  const ColumnUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column UI"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
            ElevatedButton(onPressed: () {}, child: const Text('Button 2')),
            ElevatedButton(onPressed: () {}, child: const Text('Button 3'))
          ],
        ),
      ),
    );
  }
}

/* child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("Button 1")),
                ElevatedButton(onPressed: () {}, child: const Text("Button 2")),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("Button 3")),
              ],
            ),
          ],
        ), */