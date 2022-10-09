import 'package:flutter/material.dart';
import 'package:practice_for_mids/stateManagement/screen_two.dart';

class UserListTile extends StatefulWidget {
  final User user;

  const UserListTile({Key? key, required this.user}) : super(key: key);

  @override
  State<UserListTile> createState() => _UserListTileState();
}

class _UserListTileState extends State<UserListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ScreenTwo(user: widget.user),
          ),
        );
        setState(() {});
      },
      child: ListTile(
        leading: CircleAvatar(
          child: Text(widget.user.name[0]),
        ),
        title: Text(widget.user.name),
        subtitle: Text(widget.user.gmail),
      ),
    );
  }
}

class User {
  String name;
  String gmail;

  User({required this.name, required this.gmail});
}

List<User> users = [
  User(name: "ibrahim", gmail: "ibrahimahmed.ayesha@gmail.com"),
  User(name: "ahris", gmail: "ahris@gmail.com"),
  User(name: "yahya", gmail: "yahya@gmail.com"),
];
