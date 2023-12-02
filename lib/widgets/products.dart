import 'package:flutter/material.dart';
import 'package:jurysoft_mt/models/products.dart';
import 'package:jurysoft_mt/widgets/product_card.dart';
import 'package:provider/provider.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
          value: pdts[index],
          child: ProductCardWidget(index: index,
            imageUrl: pdts[index].imageurl,
            name: pdts[index].name,
          )),
      itemCount: pdts.length,
    );
  }
}
