import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedContainer1(),
    );
  }
}

class AnimatedContainer1 extends StatefulWidget {
  const AnimatedContainer1({super.key});

  @override
  State<AnimatedContainer1> createState() => _AnimatedContainer1State();
}

class _AnimatedContainer1State extends State<AnimatedContainer1> {
  bool _toggled = false;

  void _changeShape() {
    setState(() {
      _toggled = !_toggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedContainer Demo')),
      body: Center(
        child: GestureDetector(
          onTap: _changeShape,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            width: _toggled ? 200 : 100,
            height: _toggled ? 200 : 100,
            decoration: BoxDecoration(
              color: _toggled ? Colors.red : Colors.blue,
              borderRadius: BorderRadius.circular(_toggled ? 100 : 10),
            ),
          ),
        ),
      ),
    );
  }
}
