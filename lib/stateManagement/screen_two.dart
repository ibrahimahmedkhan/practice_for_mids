import 'package:flutter/material.dart';
import 'package:practice_for_mids/stateManagement/screen_three.dart';
import 'user_list_tile.dart';


class ScreenTwo extends StatelessWidget {
  final User user;

  const ScreenTwo({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user.name),
            Text(user.gmail),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ScreenThree(user: user),
                    ),
                  );
                },
                icon: const Icon(Icons.edit))
          ],
        ),
      ),
    );
  }
}
