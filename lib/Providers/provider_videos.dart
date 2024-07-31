import 'dart:async';
import 'package:flutter/material.dart';
import 'package:toktik_clone/Data/local_video_post.dart';
import 'package:toktik_clone/Entities/video_post_entitie.dart';
import 'package:toktik_clone/Model/video_local_model.dart';

// Provider for loading videos
class VideoProvider extends ChangeNotifier {
  bool initialLoading = true;
  // List de VideoPost entitie
  List<VideoPostEntity> videos = [];
  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    // Entidad de VideoPost a lista de videoPostsdata

    final List<VideoPostEntity> newVideos = videoPostsdata
        .map((videos) => LocalVideoModel.fromJsonMap(videos).toVideoEntity())
        .toList();

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
