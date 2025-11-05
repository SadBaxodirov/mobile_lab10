import 'package:flutter/material.dart';

void main() => runApp(const CombinedDemoApp());

class CombinedDemoApp extends StatefulWidget {
  const CombinedDemoApp({super.key});

  @override
  State<CombinedDemoApp> createState() => _CombinedDemoAppState();
}

class _CombinedDemoAppState extends State<CombinedDemoApp> {
  bool _isDark = false;
  bool _toggled = false;

  final ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
  );

  final ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.black87,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.deepPurple),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter task10',
      theme: _isDark ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter task10'),
          actions: [
            Switch(
              value: _isDark,
              onChanged: (v) => setState(() => _isDark = v),
            ),
          ],
        ),
        body: Center(
          child: GestureDetector(
            onTap: () => setState(() => _toggled = !_toggled),
            onDoubleTap: () => setState(() => _toggled = !_toggled),
            onLongPress: () => setState(() => _toggled = !_toggled),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              width: _toggled ? 260 : 180,
              height: _toggled ? 260 : 180,
              decoration: BoxDecoration(
                color: _toggled
                    ? (_isDark ? Colors.deepPurple : Colors.orange)
                    : (_isDark ? Colors.grey[800] : Colors.blueAccent),
                borderRadius: BorderRadius.circular(_toggled ? 100 : 16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 12,
                    offset: const Offset(2, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomTitle(
                      text: 'Hi!',
                      color: Colors.white),
                  SizedBox(height: 10),
                  CustomCounter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTitle extends StatelessWidget {
  final String text;
  final Color color;
  const CustomTitle({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}

class CustomCounter extends StatefulWidget {
  const CustomCounter({super.key});

  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => setState(() => _count--),
          icon: const Icon(Icons.remove_circle, color: Colors.red),
        ),
        Text(
          '$_count',
          style: const TextStyle(fontSize: 22, color: Colors.white),
        ),
        IconButton(
          onPressed: () => setState(() => _count++),
          icon: const Icon(Icons.add_circle, color: Colors.yellow),
        ),
      ],
    );
  }
}
