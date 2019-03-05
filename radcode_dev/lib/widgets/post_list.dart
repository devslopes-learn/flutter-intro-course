import 'package:flutter/material.dart';
import 'package:radcode_dev/model/user.dart';
import 'post_card.dart';
import 'package:scoped_model/scoped_model.dart';

class PostList extends StatefulWidget {
  @override
  PostListState createState() => new PostListState();
}
class PostListState extends State<PostList> {
@override
  Widget build(BuildContext context) {
   return ScopedModelDescendant<User>(
     builder: (context, child, user) {
       return Expanded(
         child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemBuilder: (BuildContext _context, int i) {
                if (i < user.posts.length) {
                  return buildPostCard(user.posts[i]);
                }
              },
            ),
       );
     },
   );
  }
}

