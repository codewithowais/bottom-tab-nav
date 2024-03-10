import 'package:bottomnavetc/screens/about/about.dart';
import 'package:bottomnavetc/screens/contact/contact.dart';
import 'package:bottomnavetc/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Widget currentScreen = const DashboardView();
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: BottomAppBar(
        height: 60,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 0;
                    currentScreen = const DashboardView();
                  });
                },
                child: Icon(
                  Icons.home,
                  color: activeTab == 0 ? Colors.red : Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 1;
                    currentScreen = const ContactView();
                  });
                },
                child: Icon(
                  Icons.favorite,
                  color: activeTab == 1 ? Colors.red : Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 2;
                    currentScreen = const AboutView();
                  });
                },
                child: Icon(
                  Icons.home,
                  color: activeTab == 2 ? Colors.red : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
