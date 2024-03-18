import 'package:demo_task/model/model.dart';
import 'package:demo_task/service/service.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

class cloth extends ChangeNotifier {
  clothServices clothservices = clothServices();
  List<Clothings> dataList = [];
  bool isLoading = false;
  Future<void> fetchData() async {
    isLoading = true;
    notifyListeners();
    try {
      dataList = await clothservices.fetchData();
      notifyListeners();
    } catch (error) {
      log('error On fetching Todo : $error');
      rethrow;
    }
    isLoading = false;
    notifyListeners();
  }
}
