import 'package:flutter/material.dart';
import 'package:jurysoft_mt/models/cart.dart';
import 'package:provider/provider.dart';

class CartItemWidget extends StatelessWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String name;
  CartItemWidget(
      {super.key,
      required this.id,
      required this.productId,
      required this.price,
      required this.quantity,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
      ),
      onDismissed: (direction) => Provider.of<Cart>(context).removeltem(productId),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: FittedBox(
              child: Text("\$ ${price}"),
            ),
          ),
          title: Text(name),
          subtitle: Text("Total : \$ ${price * quantity}"),
          trailing: Text("$quantity X"),
        ),
      ),
    );
  }
}
