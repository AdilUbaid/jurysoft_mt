import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  // final String category;
  final String name;
  final String description;
  final String imageurl;
  final double price;
  Product(
      {
      // required this.category,
      required this.name,
      required this.description,
      required this.imageurl,
      required this.price,
      required this.id});
}

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
        name: "Rxich dad poor dad",
        description:
            "Rich Dad Poor Dad is a 1997 book written by Robert T. Kiyosaki and Sharon Lechter. It advocates the importance of financial literacy, financial independence and building wealth through investing in assets, real estate investing, starting and owning businesses, as well as increasing one's financial intelligence.'",
        imageurl:
            "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
        price: 901.00,
        id: "01"),
    Product(
        name: "Rich dad poor dad",
        description: 'finance book',
        imageurl:
            "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
        price: 902.00,
        id: "02"),
    Product(
        name: "Rich dad poor dad",
        description: 'finance book',
        imageurl:
            "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
        price: 903.00,
        id: "03"),
    Product(
        name: "Rich dad poor dad",
        description: 'finance book',
        imageurl:
            "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
        price: 904.00,
        id: "04"),
    Product(
        name: "Rich dad poor dad",
        description: 'finance book',
        imageurl:
            "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
        price: 905.00,
        id: "05"),
    Product(
        name: "Rich dad poor dad",
        description: 'finance book',
        imageurl:
            "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
        price: 906.00,
        id: "06"),
    Product(
        name: "Rich dad poor dad",
        description: 'finance book',
        imageurl:
            "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
        price: 907.00,
        id: "07"),
    Product(
        name: "Rich dad poor dad",
        description: 'finance book',
        imageurl:
            "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
        price: 908.00,
        id: "08"),
    Product(
        name: "Rich dad poor dad",
        description: 'finance book',
        imageurl:
            "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
        price: 999.00,
        id: "09"),
    Product(
        name: "Rich dad poor dad",
        description: 'finance book',
        imageurl:
            "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
        price: 910.00,
        id: "10"),
    Product(
        name: "Rich dad poor dad",
        description: 'finance book',
        imageurl:
            "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
        price: 911.00,
        id: "11"),
    Product(
        name: "Rich dad poor dad",
        description: 'finance book',
        imageurl:
            "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
        price: 912.00,
        id: "12")
  ];
  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }
}
