import 'package:flutter/material.dart';
import 'package:jurysoft_mt/screens/cart_screen.dart';
import 'package:jurysoft_mt/widgets/products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Ecommerce"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ));
              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView(
        children: const [
          Center(
            child: Text(
              "Products",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ProductsWidget()
        ],
      ),
    );
  }
}
