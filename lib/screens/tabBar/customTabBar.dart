import 'package:bottomnavetc/screens/about/about.dart';
import 'package:bottomnavetc/screens/contact/contact.dart';
import 'package:bottomnavetc/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class CustomTabBarView extends StatefulWidget {
  const CustomTabBarView({super.key});

  @override
  State<CustomTabBarView> createState() => _CustomTabBarViewState();
}

class _CustomTabBarViewState extends State<CustomTabBarView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            DashboardView(),
            ContactView(),
            AboutView(),
          ],
        ),
      ),
    );
  }
}
