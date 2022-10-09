import 'package:flutter/material.dart';
import 'package:practice_for_mids/Assignment3-ShoppingCart/products_screen.dart';
import 'package:practice_for_mids/stateManagement/screen_one.dart';
import 'Assignment2-Callback/callback.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Projects',
      home: ScreenOne(),
    );
  }
}
