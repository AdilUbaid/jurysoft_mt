// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:jurysoft_mt/models/products.dart';

import 'package:jurysoft_mt/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';

class ProductCardWidget extends StatelessWidget {
  String name;
  String imageUrl;
  int index;
  ProductCardWidget({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final productData = Provider.of<Products>(context);
    // final pdts = productData.items;
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              index: index,
            ),
          )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridTile(
          footer: GridTileBar(
            title: Text(name),
            trailing: IconButton(
              icon: const Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {},
            ),
            backgroundColor: Colors.black45,
          ),
          child: Image.network(imageUrl),
        ),
      ),
    );
  }
}
