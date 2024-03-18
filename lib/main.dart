import 'package:demo_task/Home.dart';
import 'package:demo_task/controller/cloth_provider.dart';
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
      create: (context) => ClothProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Home(),
      ),
    );
  }
}
