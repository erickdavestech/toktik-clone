import 'package:flutter/material.dart';
import 'package:toktik_clone/Entities/video_post_entity.dart';
import 'package:toktik_clone/Ui/Pages/full_screen_video.dart';
import 'package:toktik_clone/Ui/Widgets/video_buttoms.dart';

class VideoPageListView extends StatelessWidget {
  final List<VideoPostEntity> videos;
  const VideoPageListView({super.key, required this.videos});

  @override
  Widget build(Object context) {
    // Utilizaremos .builder para construir los elementos de menare perezo y eficiente
    return PageView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemCount: videos.length, // Tomamos el total
        itemBuilder: (context, index) {
          final VideoPostEntity viPost = videos[index];
          // Con Stack posicionamos uno encima del otro
          return Stack(children: [
            SizedBox.expand(
              child: FullScreenVideo(
                videoUrl: viPost.videoUrl,
                caption: viPost.caption,
              ),
            ),
            // Ajustamos posicion
            Positioned(
              bottom: 40,
              right: 20,
              // llamamos buttom
              child: VideoButtom(video: viPost),
            )
          ]);
        });
  }
}
