import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class ClothProvider extends ChangeNotifier {
  List<dynamic> products = [];
  Future<void> fetchProducts() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      products = json.decode(response.body);
    } else {
      throw Exception('Failed to load products');
    }
  }
}
