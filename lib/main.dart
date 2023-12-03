import 'package:flutter/material.dart';
import 'package:jurysoft_mt/models/cart.dart';
import 'package:jurysoft_mt/models/products.dart';
import 'package:jurysoft_mt/screens/home_screen.dart';
import 'package:jurysoft_mt/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(), // Create an instance of Products here
        ),
        ChangeNotifierProvider.value(
          value: Cart(), // Create an instance of Products here
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "JurySoft MT",
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: Colors.teal,
        ),
        home: const HomeScreen(),
        
      ),
    );
  }
}
