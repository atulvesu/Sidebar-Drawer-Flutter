import 'package:flutter/material.dart';
import 'package:sidebar_menu/Screen/screen1.dart';
import 'package:sidebar_menu/Screen/screen2.dart';
import 'package:sidebar_menu/Screen/screen3.dart';

class BottomTapScreen extends StatefulWidget {
  const BottomTapScreen({super.key});

  @override
  State<BottomTapScreen> createState() => _BottomTapScreenState();
}

class _BottomTapScreenState extends State<BottomTapScreen> {
  int myIndex = 0;
  List<Widget> widgetList = const [
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(shadowColor: Colors.white),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo,
        fixedColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        // showSelectedLabels: false,
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {});
          myIndex = index;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.teal,
              icon: Icon(Icons.accessibility_rounded),
              label: "Proile"),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.account_circle_rounded),
              label: "Settings")
        ],
      ),
      appBar: AppBar(
        // For Change the icon colour of Hamburger
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo,
        title: Text(
          'Bottom Tab Bar',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: widgetList[myIndex],
      ),
    );
  }
}
