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
      name: "Rich Dad Poor Dad",
      description:
          "Rich Dad Poor Dad is a 1997 book written by Robert T. Kiyosaki and Sharon Lechter. It advocates the importance of financial literacy, financial independence and building wealth through investing in assets, real estate investing, starting and owning businesses, as well as increasing one's financial intelligence.",
      imageurl:
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
      price: 901.00,
      id: "01",
    ),
    Product(
      name: "The Great Gatsby",
      description:
          "The Great Gatsby is a novel by F. Scott Fitzgerald. Set in the Jazz Age on Long Island, the novel depicts narrator Nick Carraway's interactions with mysterious millionaire Jay Gatsby.",
      imageurl:
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
      price: 15.99,
      id: "02",
    ),
    Product(
      name: "To Kill a Mockingbird",
      description:
          "To Kill a Mockingbird is a novel by Harper Lee. It explores the issues of racial injustice and moral growth in the American South during the Great Depression.",
      imageurl:
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
      price: 12.50,
      id: "03",
    ),
    Product(
      name: "The Catcher in the Rye",
      description:
          "The Catcher in the Rye is a novel by J.D. Salinger. It follows the life of a young man named Holden Caulfield over a few days in New York City.",
      imageurl:
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
      price: 14.75,
      id: "04",
    ),
    Product(
      name: "1984",
      description:
          "1984 is a dystopian novel by George Orwell. It explores the dangers of totalitarianism, mass surveillance, and the loss of individuality and privacy.",
      imageurl:
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
      price: 10.99,
      id: "05",
    ),
    // Add more dummy products based on your code structure
    Product(
      name: "The Hobbit",
      description:
          "The Hobbit, or There and Back Again, is a fantasy novel by J.R.R. Tolkien. It follows the journey of Bilbo Baggins as he sets out on an adventure to the Lonely Mountain.",
      imageurl:
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
      price: 18.25,
      id: "06",
    ),
    Product(
      name: "Harry Potter and the Sorcerer's Stone",
      description:
          "Harry Potter and the Sorcerer's Stone is the first book in the Harry Potter series by J.K. Rowling. It introduces the young wizard Harry Potter and his magical journey at Hogwarts School of Witchcraft and Wizardry.",
      imageurl:
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
      price: 22.99,
      id: "07",
    ),
    Product(
      name: "The Alchemist",
      description:
          "The Alchemist is a novel by Paulo Coelho. It follows the journey of Santiago, a young shepherd, as he searches for a treasure in the Egyptian pyramids.",
      imageurl:
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
      price: 14.50,
      id: "08",
    ),
    Product(
      name: "The Da Vinci Code",
      description:
          "The Da Vinci Code is a mystery thriller novel by Dan Brown. It follows symbologist Robert Langdon as he investigates a murder at the Louvre Museum and discovers hidden secrets.",
      imageurl:
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
      price: 16.75,
      id: "09",
    ),
    Product(
      name: "The Girl on the Train",
      description:
          "The Girl on the Train is a psychological thriller novel by Paula Hawkins. It follows the lives of three women intertwined by a series of mysterious events and a missing person.",
      imageurl:
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/regionalbooks/l/9/r/rich-dad-poor-dad-original-imagtvxyzz8uvp4x.jpeg?q=90",
      price: 13.99,
      id: "10",
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }
}
