import 'package:bottomnavetc/screens/home/home.dart';
import 'package:bottomnavetc/screens/tabBar/customTabBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomTabBarView(),
    );
  }
}
