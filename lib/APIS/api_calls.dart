import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Post.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  List<Post> posts = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPost();
  }

  fetchPost() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final response = await http.get(url);
    List list = jsonDecode(response.body) as List;
    posts = list.map((post) => Post.fromJson(post)).toList();
    setState(() {});
    // return posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: posts
            .map((post) => ListTile(
                  title: Text(post.title.toString()),
                  subtitle: Text(post.body.toString()),
                ))
            .toList(),
      ),
    );
  }
}
