import 'package:flutter/material.dart';
import 'package:practice_for_mids/APIS/api_calls.dart';
import 'package:practice_for_mids/Animations/animationControllerStuff.dart';
import 'package:practice_for_mids/Animations/animations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Projects',
      home: UserDetails(),
    );
  }
}
