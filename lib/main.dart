import 'package:flutter/material.dart';
import 'tasks/task1.dart'; // 👈 import the new widget file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Layout Demo',
      home: Task1(), // 👈 use the widget here
    );
  }
}
