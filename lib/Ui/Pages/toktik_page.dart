import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_clone/Providers/provider_videos.dart';

class TokTikPage extends StatelessWidget {
  const TokTikPage({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final videoProv = context.watch<VideoProvider>();

    return Scaffold(
        body: videoProv.initialLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : const Placeholder());
  }
}
