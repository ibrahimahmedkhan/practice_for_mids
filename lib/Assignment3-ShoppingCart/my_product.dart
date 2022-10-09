import 'package:flutter/material.dart';

class MyProduct extends StatefulWidget {
  final Product product;
  final VoidCallback onChange;

  const MyProduct({Key? key, required this.product, required this.onChange})
      : super(key: key);

  @override
  State<MyProduct> createState() => _MyProductState();
}

class _MyProductState extends State<MyProduct> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text("P${widget.product.id}"),
      ),
      title: Text("Product${widget.product.id}"),
      trailing: widget.product.quantity == 0
          ? IconButton(
              onPressed: () {
                widget.product.quantity += 1;
                setState(() {});
                widget.onChange();
              },
              icon: const Icon(Icons.add))
          : Row(mainAxisSize: MainAxisSize.min, children: [
              IconButton(
                  onPressed: () {
                    widget.product.quantity -= 1;
                    widget.onChange();
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove)),
              Text(widget.product.quantity.toString()),
              IconButton(
                  onPressed: () {
                    widget.product.quantity += 1;
                    setState(() {});
                  },
                  icon: const Icon(Icons.add))
            ]),
    );
  }
}

class Product {
  final int id;
  int quantity = 0;

  Product({required this.id});
}
