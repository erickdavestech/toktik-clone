import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

// Transformamos de StatelesWidget a StatefullWidget
class FullScreenVideo extends StatefulWidget {
  final String videoUrl;
  final String caption;
  const FullScreenVideo(
      {super.key, required this.videoUrl, required this.caption});

  @override
  State<FullScreenVideo> createState() => _FullScreenVideoState();
}

class _FullScreenVideoState extends State<FullScreenVideo> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.asset(widget.videoUrl)
      ..setVolume(0)
      ..setLooping(true)
      ..play();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: controller.initialize(),
        builder: (context, snapshot) {
          return const Center(
              child: CircularProgressIndicator(
            strokeAlign: 2,
          ));
        });
  }
}
