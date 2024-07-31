import 'package:flutter/material.dart';
import 'package:toktik_clone/Entities/video_post_entitie.dart';

class VideoPageListView extends StatelessWidget {
  final List<VideoPostEntity> videos;
  const VideoPageListView({super.key, required this.videos});

  @override
  Widget build(Object context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      children: [
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: const Color.fromARGB(255, 17, 74, 131)),
        Container(color: const Color.fromARGB(255, 87, 119, 145)),
        Container(color: const Color.fromARGB(255, 54, 122, 177)),
      ],
    );
  }
}
