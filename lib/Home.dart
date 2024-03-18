import 'package:demo_task/controller/cloth_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Provider.of<ClothProvider>(context, listen: false).fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Product List'),
      ),
      body: Consumer<ClothProvider>(builder: (context, pro, child) {
        return ListView.builder(
          itemCount: pro.products.length,
          itemBuilder: (context, index) {
            final product = pro.products[index];
            return ListTile(
              leading: Image.network(product['image']),
              title: Text(product['title']),
              subtitle: Text('\$${product['price']}'),
            );
          },
        );
      }),
    );
  }
}
