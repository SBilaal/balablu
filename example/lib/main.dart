import 'package:balablu/balablu.dart';
import 'package:flutter/material.dart';

void main() {
  Balablu.init(frequency: Frequencies.veryHigh);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Balablu Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Balablu Demo'),
        ),
        body: const Center(
          child: Text(
            'Shake your device to enable/disable the Balablu sound!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
