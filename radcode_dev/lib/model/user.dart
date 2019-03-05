import 'post.dart';
import 'package:scoped_model/scoped_model.dart';

class User extends Model {
  
  final String username;
  final String email;
  final List<Post> posts;

  User(this.username, this.email, this.posts);

  void createPost(Post post) {
    posts.add(post);
    notifyListeners();
  }

  User.fromJSON(Map<String, dynamic> json)
    : username = json['username'],
      email = json['email'],
      posts = json['posts'];

  Map<String, dynamic> toJSON() => {
    'username' : username,
    'email' : email,
    'posts' : posts
  };
}