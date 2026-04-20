
import 'package:flutter/material.dart';
import '../models/product.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  List<Product> products = [
    Product(name: "Shirt", price: 500),
    Product(name: "Shoes", price: 1500),
  ];

  List<Product> cart = [];

  void addToCart(Product product) {
    setState(() {
      cart.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text("₹${products[index].price}"),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => addToCart(products[index]),
            ),
          );
        },
      ),
    );
  }
}
