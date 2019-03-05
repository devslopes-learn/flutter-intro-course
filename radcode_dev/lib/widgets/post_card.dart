import 'package:flutter/material.dart';
import 'package:radcode_dev/model/post.dart';

const _MAX_TAGS = 4;

Widget _buildTags(List<String> tags) {

  List<Widget> chips = [];
  for (var i = 0; i < tags.length && i <=_MAX_TAGS; i++) {
    final chip =  Container(
      padding: EdgeInsets.only(right: 10),
      child: Chip(
        label: Text(tags[i]),
        backgroundColor: Colors.blue[300]
      )
    );
    chips.add(chip);
  }

  return Row(
      children: chips,
    );
}

Widget buildPostCard(Post post) {
  return Card(
    child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(post.title, style: TextStyle(fontSize: 18)),
          _buildTags(post.tags)
        ]
      ),
    )
  );
}