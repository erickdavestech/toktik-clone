import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toktik_clone/Entities/video_post_entitie.dart';

// Provider for loading videos
class VideoProvider extends ChangeNotifier {
  bool initialLoading = true;
  // List de VideoPost entitie
  List<VideoPost> videos = [];
  Future<void> loadNextPage() async => notifyListeners();
}
