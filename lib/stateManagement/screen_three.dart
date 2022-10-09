import 'package:flutter/material.dart';
import 'user_list_tile.dart';

class ScreenThree extends StatefulWidget {
  final User user;

  const ScreenThree({Key? key, required this.user}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController gmailController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController.value =
        nameController.value.copyWith(text: widget.user.name);
    gmailController.value =
        gmailController.value.copyWith(text: widget.user.gmail);
    nameController.addListener(() {
      widget.user.name = nameController.text;
    });
    gmailController.addListener(() {
      widget.user.gmail = gmailController.text;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    gmailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Username",
                hintText: widget.user.name,
              ),
            ),
            TextField(
              controller: gmailController,
              decoration: InputDecoration(
                labelText: "Gmail",
                hintText: widget.user.gmail,
              ),
            )
          ],
        ),
      ),
    );
  }
}
