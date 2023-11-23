import 'package:flutter/material.dart';
import 'package:tokyo/screens/home.dart';

void main() {
  runApp(const Tokyo());
}

class Tokyo extends StatelessWidget {
  const Tokyo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
