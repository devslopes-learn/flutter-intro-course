import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Post extends Model {
  final String title;
  final String url;
  final List<String> tags;

  Post(this.title, this.url, this.tags);

  Post.fromJSON(Map<String, dynamic> json)
      : title = json['title'] ?? '',
        url = json['url'] ?? '',
        tags = json['tags'].cast<String>() ?? [];

  Map<String, dynamic> toJSON() => {'title': title, 'url': url, 'tags': tags};

  static Future<List<Post>> fetchPosts() async {
    try {
      final response = await get('http://10.0.2.2:8080/posts');
      if (response.statusCode == 200) {
        List<dynamic> jsonPostList = jsonDecode(response.body);
        List<Post> posts = [];
        for (var x in jsonPostList) {
          posts.add(Post.fromJSON(x));
        }
        return posts;
      } else {
        //Should return error message Widget
        throw Exception('Failed to load post');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
