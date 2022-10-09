import 'package:flutter/material.dart';
import 'MyCard.dart';

class Callback extends StatefulWidget {
  const Callback({Key? key}) : super(key: key);

  @override
  State<Callback> createState() => _CallbackState();
}

class _CallbackState extends State<Callback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: users
            .map((user) => MyCard(
                  user: user,
                  onTap: () {
                    user.liked = !user.liked;
                    setState(() {});
                  },
                ))
            .toList(),
      ),
    );
  }
}

class User {
  final String name;
  final String gmail;
  final String img;
  int views = 0;
  bool liked = false;

  User({required this.name, required this.gmail, required this.img});
}

List<User> users = [
  User(
      name: "Google",
      gmail: "gmaild@gmail.com",
      img:
      "https://w0.peakpx.com/wallpaper/274/516/HD-wallpaper-windows-xp-open-field-expanse-version-3-nature-technology-field-expanse-windows-xp-windows-xp-nostalgia-background-green-field-open-field-windows-green-blue-sky-blue.jpg"),
  User(
      name: "Facebook",
      gmail: "facebook@gmail.com",
      img:
      "https://www.biblword.net/wp-content/uploads/2017/09/Baptism-e1624362261646.jpg"),
  User(
      name: "Apple",
      gmail: "apple@gmail.com",
      img:
      "https://wallpapers.com/images/hd/shrek-windows-xp-meme-67qdn6wzoe99uihp.jpg")
];
