import 'package:flutter/material.dart';
import 'cart.dart';
import 'my_product.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Cart(
                      products: products,
                    )));
            setState(() {});
          },
          label: Text(
              "Cart(${products.where((product) => product.quantity > 0).length})"),
        ),
        body: ListView(
          children: products
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

List<Product> products = [
  Product(id: 1),
  Product(id: 2),
  Product(id: 3),
  Product(id: 4),
  Product(id: 5),
  Product(id: 6),
  Product(id: 7),
  Product(id: 8),
];
