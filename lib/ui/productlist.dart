import 'package:flutter/material.dart';
import 'package:sql/helper/producthelp.dart';
import 'package:sql/model/productmodel.dart';

class Productlist extends StatefulWidget {
  static const id = '/list';

  @override
  State<Productlist> createState() => _ProductlistState();
}

class _ProductlistState extends State<Productlist> {
  TextEditingController namec = TextEditingController();

  TextEditingController titlec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Product List')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: const Text('Add List'),
                      content: Column(
                        children: [
                          TextField(
                            controller: namec,
                            decoration: const InputDecoration(
                              hintText: 'Add Name',
                            ),
                          ),
                          TextField(
                            controller: titlec,
                            decoration: const InputDecoration(
                              hintText: 'Add Title',
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            })
          ],
        ));
  }
}
