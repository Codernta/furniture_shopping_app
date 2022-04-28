import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Furniture shop demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
