import 'package:flutter/material.dart';
import 'package:radcode_dev/widgets/post_list.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  
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
          children: [
            PostList()
          ],
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

