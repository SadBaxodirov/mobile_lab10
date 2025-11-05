import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: GestureDemo()));

class GestureDemo extends StatefulWidget {
  const GestureDemo({super.key});

  @override
  State<GestureDemo> createState() => _GestureDemoState();
}

class _GestureDemoState extends State<GestureDemo> {
  Color _backgroundColor = Colors.white;

  void _onSingleTap() {
    setState(() {
      _backgroundColor = Colors.blue;
    });
  }

  void _onDoubleTap() {
    setState(() {
      _backgroundColor = Colors.green;
    });
  }

  void _onLongPress() {
    setState(() {
      _backgroundColor = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GestureDetector Practice')),
      body: GestureDetector(
        onTap: _onSingleTap,
        onDoubleTap: _onDoubleTap,
        onLongPress: _onLongPress,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          color: _backgroundColor,
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Text(
              'Tap',
              style: const TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
