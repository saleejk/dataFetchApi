import 'package:demo_task/controller/clothing_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Consumer<cloth>(builder: (context, pro, child) {
        return Expanded(
            child: ListView.builder(
                itemCount: pro.dataList.length,
                itemBuilder: (ctx, index) {
                  final data = pro.dataList.length - index - 1;
                  final D = pro.dataList[data];
                  return ListTile(
                    title: Text('hey'),
                  );
                }));
      }),
    );
  }
}
