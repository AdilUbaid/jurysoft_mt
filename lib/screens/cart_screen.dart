import 'package:flutter/material.dart';
import 'package:jurysoft_mt/models/cart.dart';
import 'package:jurysoft_mt/widgets/cart_item.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => CartItemWidget(
                  productId: cart.items.keys.toList()[index],
                  id: cart.items.values.toList()[index].id,
                  name: cart.items.values.toList()[index].name,
                  quantity: cart.items.values.toList()[index].quantity,
                  price: cart.items.values.toList()[index].price),
              itemCount: cart.items.length,
            ),
          ),
          TextButton(
              onPressed: () {},
              child: TextButton(
                  onPressed: () {},
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(color: Colors.blue),
                      child: const Center(
                        child: Text(
                          "Checkout",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ))))
        ],
      ),
    );
  }
}
