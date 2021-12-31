import 'package:flutter/material.dart';
import 'package:sql/ui/productlist.dart';
import 'package:sql/ui/products.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TO-DO List',
      home: Products(),
    );
  }
}
