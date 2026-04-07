import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Light Switch',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const LightSwitchPage(),
    );
  }
}

class LightSwitchPage extends StatefulWidget {
  const LightSwitchPage({super.key});

  @override
  State<LightSwitchPage> createState() => _LightSwitchPageState();
}

class _LightSwitchPageState extends State<LightSwitchPage> {
  bool _isLightOn = false;

  void _toggleLight() {
    setState(() {
      _isLightOn = !_isLightOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LED Light Switch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lightbulb,
              size: 150,
              color: _isLightOn ? Colors.yellow : Colors.grey,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _toggleLight,
              child: Text(_isLightOn ? 'Turn Off' : 'Turn On'),
            ),
          ],
        ),
      ),
    );
  }
}