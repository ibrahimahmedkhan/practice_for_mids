import 'package:flutter/material.dart';

class AnimtaionStuff extends StatefulWidget {
  const AnimtaionStuff({Key? key}) : super(key: key);

  @override
  State<AnimtaionStuff> createState() => _AnimtaionStuffState();
}

class _AnimtaionStuffState extends State<AnimtaionStuff> {
  late bool selected;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selected = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () => setState(() {
            selected = !selected;
          }),
          child: AnimatedContainer(
            height: selected ? 200 : 70,
            width:  selected ? 200 : 300,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: selected ? Colors.red : Colors.blue,
            ),
            duration: Duration(seconds: 1),
            alignment: selected ? Alignment(10, 10) : Alignment(100, 100),
            child: Center(
              child: FlutterLogo(),
            ),
          ),
        ),
      ),
    );
  }
}
