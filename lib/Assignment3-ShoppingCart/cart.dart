import 'package:flutter/material.dart';
import 'my_product.dart';

class Cart extends StatefulWidget {
  final List<Product> products;

  const Cart({Key? key, required this.products}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        body: ListView(
          children: widget.products
              .where((product) => product.quantity > 0)
              .map((product) => MyProduct(
                    product: product,
                    onChange: () {
                      setState(() {});
                    },
                  ))
              .toList(),
        ));
  }
}
