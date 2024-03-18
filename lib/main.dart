import 'package:demo_task/controller/clothing_controller.dart';
import 'package:demo_task/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => cloth(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Home(),
      ),
    );
  }
}
