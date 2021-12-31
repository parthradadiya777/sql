import 'package:flutter/material.dart';
import 'package:sql/helper/producthelp.dart';
import 'package:sql/model/productmodel.dart';
import 'package:sql/ui/productlist.dart';

class Products extends StatefulWidget {
  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final dbhelper = Producthelper.instance;

  void inserdata() async {
    Map<String, dynamic> product = {
      dbhelper.colname: 'part',
      dbhelper.coltitle: 'radadiya',
    };
    final id = await dbhelper.insertProduct(Product.fromMapObject(product));
    print(id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do list'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              inserdata();
            },
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
