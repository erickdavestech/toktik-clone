import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_clone/Config/app_theme.dart';
import 'package:toktik_clone/Providers/provider_videos.dart';
import 'package:toktik_clone/Ui/Pages/toktik_page.dart';

void main() => runApp(const TokTik());

class TokTik extends StatelessWidget {
  const TokTik({super.key});

  @override
  Widget build(BuildContext context) {
    // Using provider
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
              lazy: false, create: (_) => VideoProvider()..loadNextPage()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          home: const TokTikPage(),
        ));
  }
}
