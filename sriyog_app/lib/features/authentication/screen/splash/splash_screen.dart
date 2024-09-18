import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sriyog_app/navigation_menu.dart';
import 'package:sriyog_app/utils/helpers/helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const NavigationMenu(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = SpHelper.isDarkMode(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: isDark ? Colors.black : Colors.white,
        child: Center(
          child: Text(
            'Sriyog',
            style: Theme.of(context).textTheme.displayMedium!.apply(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
