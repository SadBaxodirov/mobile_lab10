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
        appBar: AppBar(title: const Text('Container, Row, Column and Wrap')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width: 60, height: 60, color: Colors.red),
                  Container(width: 60, height: 60, color: Colors.blue),
                ],
              ),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  Container(width: 60, height: 60, color: Colors.green),
                  Container(width: 60, height: 60, color: Colors.orange),
                  Container(width: 60, height: 60, color: Colors.purple),
                  Container(width: 60, height: 60, color: Colors.teal),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
