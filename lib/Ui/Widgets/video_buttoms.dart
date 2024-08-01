import 'package:flutter/material.dart';
import 'package:toktik_clone/Entities/video_post_entity.dart';

class VideoButtom extends StatelessWidget {
  final VideoPostEntity video;
  const VideoButtom({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomVideoViewButtom(
          value: video.likes,
          iconData: Icons.favorite,
          iconColor: Colors.red,
        ),
        _CustomVideoViewButtom(
          value: video.views,
          iconData: Icons.remove_red_eye_outlined,
        )
      ],
    );
  }
}

class _CustomVideoViewButtom extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color color;

  const _CustomVideoViewButtom(
      {required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(iconData, color: color,size: 40,),
        ),
        Text('$value'),
      ],
    );
  }
}
