import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MoveLogo()));

class MoveLogo extends StatefulWidget {
  const MoveLogo({super.key});

  @override
  State<MoveLogo> createState() => _MoveLogoState();
}

class _MoveLogoState extends State<MoveLogo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 500).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _runAnimation() {
    _controller.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Logo Explicit Animation')),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(_animation.value, 0),
              child: child,
            );
          },
          child: const FlutterLogo(size: 80),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _runAnimation,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
