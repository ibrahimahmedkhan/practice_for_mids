import 'package:flutter/material.dart';

class Callback extends StatelessWidget {
  const Callback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: users.map((user) => MyCard(user: user)).toList(),
      ),
    );
  }
}

class User{
  final String name;
  final String gmail;
  final int views = 0;
  final bool liked = false;

  const User({required this.name, required this.gmail});
}

List<User> users = const [
  User(name: "Google", gmail: "gmaild@gmail.com"),
  User(name: "Facebook", gmail: "facebook@gmail.com"),
  User(name: "Apple", gmail: "apple@gmail.com")
];

class MyCard extends StatefulWidget {
  final User user;
  const MyCard({Key? key, required this.user}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Text(widget.user.name[0]),),
        subtitle: Text(widget.user.gmail),
        trailing: Column(
          children: [
            const Icon(Icons.favorite),
            Row(
              children: [
                const Icon(Icons.visibility),
                Text(widget.user.views.toString())
              ],
            )
          ],
        ),
      ),
    );
  }
}
