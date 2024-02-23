import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sidebar_menu/Screen/bottomTabScreen.dart';

import 'package:sidebar_menu/Screen/sideDrawerScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Side Bar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // At Initial Route Write 'bottomTabScreen' to show Next Screen
      initialRoute: 'SideDrawerScreen',

      routes: {
        'SideDrawerScreen': (context) => SideDrawerScreen(),
        'bottomTabScreen': (context) => BottomTapScreen(),
      },
    );
  }
}
