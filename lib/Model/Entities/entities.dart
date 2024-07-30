// Entidad de video Post
class VideoPost {
  final String caption;
  final String videoUr;
  final int likes;
  final int views;

  VideoPost({
    required this.caption,
    required this.videoUr,
    this.likes = 0,
    this.views = 0,
  });
}
