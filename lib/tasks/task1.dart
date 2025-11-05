import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container, Row, Column and Wrap'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBox(Colors.red),
                buildBox(Colors.blue),
              ],
            ),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                buildBox(Colors.green),
                buildBox(Colors.orange),
                buildBox(Colors.purple),
                buildBox(Colors.teal),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBox(Color color) {
    return Container(
      width: 60,
      height: 60,
      color: color,
    );
  }
}
