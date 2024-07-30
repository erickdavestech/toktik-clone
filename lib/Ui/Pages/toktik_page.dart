import 'package:flutter/material.dart';

class TokTikPage extends StatelessWidget {
  const TokTikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: Text(
      'TokTik Vertical Videos',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 80,
        fontWeight: FontWeight.bold,
      ),
    )));
  }
}
