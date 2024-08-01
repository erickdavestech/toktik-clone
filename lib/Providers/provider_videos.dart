import 'dart:async';
import 'package:flutter/material.dart';
import 'package:toktik_clone/Data/local_video_map.dart';
import 'package:toktik_clone/Entities/video_post_entity.dart';
import 'package:toktik_clone/Model/video_local_model.dart';

class VideoProvider extends ChangeNotifier {
  bool initialLoading = true;

  List<VideoPostEntity> videos = [];
  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPostEntity> newVideos = videoPostsdata
        .map((videos) => LocalVideoModel.fromJsonMap(videos).toVideoEntity())
        .toList();

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
