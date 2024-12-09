import 'package:flutter/material.dart';

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator App"),
      ),
      body: Column(
        children: [
          // Text area for displaying current input or result
          Container(
            padding: const EdgeInsets.all(8),
            height: 100,
            color: Colors.white,
            child: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                '', // Placeholder for the current input or result
                style: TextStyle(fontSize: 32, color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(8),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              crossAxisCount: 4,
              children: [
                _buildButton('C', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('*', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('/', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('⌫', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('1', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('2', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('3', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('+', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('4', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('5', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('6', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('-', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('7', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('8', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('9', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('*', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('%', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('0', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('.', const Color.fromARGB(255, 192, 143, 159)),
                _buildButton('=', const Color.fromARGB(255, 192, 143, 159)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text, Color color) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(8), // Adjust the radius to your liking
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
