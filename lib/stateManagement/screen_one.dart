import 'package:flutter/material.dart';
import 'package:practice_for_mids/stateManagement/screen_two.dart';
import 'user_list_tile.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: users.map((user) => UserListTile(user: user)).toList(),
      ),
    );
  }
}

