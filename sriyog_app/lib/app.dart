import 'package:flutter/material.dart';
import 'package:sriyog_app/navigation_menu.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sriyog App',
      home: Scaffold(
        body: NavigationMenu(),
      ),
    );
  }
}
