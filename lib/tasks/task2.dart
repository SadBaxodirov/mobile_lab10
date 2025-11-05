import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('CustomTitle')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customTitle("title 1", Colors.green),
                customTitle("title 1", Colors.red)]
          ),
        ),
      ),
    );
  }

  Widget customTitle(String text, Color color) {
    return Text(text, style: TextStyle(color: color));
  }
}
