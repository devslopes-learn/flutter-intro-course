import 'package:scoped_model/scoped_model.dart';

class Post extends Model  {
  final String title;
  final String url;
  final List<String> tags;

  Post(this.title, this.url, this.tags);

  Post.fromJSON(Map<String, dynamic> json)
    : title = json['title'],
      url = json['url'],
      tags = json['tags'];

  Map<String, dynamic> toJSON() => {
    'title' : title,
    'url' : url,
    'tags' : tags
  };
}

// Map userMap = jsonDecode(jsonString);
// var user = new User.fromJson(userMap);

// print('Howdy, ${user.name}!');
// print('We sent the verification link to ${user.email}.');
// String json = jsonEncode(user);