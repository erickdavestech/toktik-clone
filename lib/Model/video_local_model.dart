// Model
import 'package:toktik_clone/Entities/video_post_entity.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  const LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  // Factoy from Json to make Map
  factory LocalVideoModel.fromJsonMap(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json['name'] ?? 'No Name is Provide',
        videoUrl: json['videoUrl'] ?? 'No video Url is Provide',
        likes: json['likes'] ?? 'No Likes',
        views: json['views'] ?? 'No Views',
      );

// TO LINK video with Entity
  VideoPostEntity toVideoEntity() => VideoPostEntity(
      caption: name, videoUrl: videoUrl, likes: likes, views: views);
}
