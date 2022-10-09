import 'package:flutter/material.dart';
import 'callback.dart';

class MyCard extends StatefulWidget {
  final User user;
  final VoidCallback onTap;

  const MyCard({Key? key, required this.user, required this.onTap})
      : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: ClipPath(
        clipper: const ShapeBorderClipper(
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(5)))),
        child: Column(
          children: [
            Image.network(
              widget.user.img,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text(widget.user.name[0]),
              ),
              title: Text(widget.user.name),
              subtitle: Text(widget.user.gmail),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: widget.onTap,
                        child: Icon(
                          Icons.favorite,
                          color: widget.user.liked == false
                              ? Colors.grey
                              : Colors.red,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.visibility),
                          Text(widget.user.views.toString())
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
