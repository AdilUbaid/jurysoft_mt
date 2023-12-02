// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:jurysoft_mt/models/products.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = "/product-detail";
  int index;
  DetailScreen({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;
    return Scaffold(
      appBar: AppBar(
        title: Text(pdts[index].name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(pdts[index].imageurl),
                            fit: BoxFit.fitHeight)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$ ${pdts[index].price}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                Text(
                  "${pdts[index].description}",
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
            TextButton(
                onPressed: () {},
                child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Center(
                      child: Text(
                        "Add to cart",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
