import 'package:flutter/material.dart';
import 'package:toktik_clone/Ui/Config/app_theme.dart';
import 'package:toktik_clone/Ui/Pages/toktik_page.dart';

void main() => runApp(const TokTik());

class TokTik extends StatelessWidget {
  const TokTik({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: const TokTikPage(),
    );
  }
}
