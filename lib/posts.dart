import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Posts extends StatefulWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  void initState() {
    super.initState();
    fetchPost();
  }

  List posts = [];
  void fetchPost() async {
    var url = await http.get(Uri.parse('https://dummyjson.com/posts'));
    var response = jsonDecode(url.body)['posts'];

    setState(() {
      posts = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
        backgroundColor: Colors.blue[200],
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset('images/chat-bubble.png'),
            title: Text(
              'nama: ' + posts[index]['title'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('nim: ' + posts[index]['body']),
          );
        },
      ),
    );
  }
}
