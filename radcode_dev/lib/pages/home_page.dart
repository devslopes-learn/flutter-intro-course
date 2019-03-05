import 'package:flutter/material.dart';
import 'package:radcode_dev/model/dummy_data.dart';
import 'package:scoped_model/scoped_model.dart';
// import 'package:radcode_dev/model/user.dart';
import 'package:radcode_dev/model/post.dart';
import 'package:radcode_dev/widgets/post_list.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.posts}) : super(key: key);
  // final user = getUser();
  final Future<Post> posts;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.only(top: 80, left: 15),
          child: Text('App development'),
        )
      ),
      appBar: AppBar(
        title: Text( 'RadCode'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ScopedModel<Post>(
              model: posts,
              child: PostList(),
            ),
          ],
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

