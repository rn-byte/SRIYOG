import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sriyog_app/features/authentication/screen/splash/splash_screen.dart';

import 'features/authentication/screen/splash/p_of_the_day.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: SpAppTheme.lightTheme,
      darkTheme: SpAppTheme.darkTheme,
      title: 'Sriyog App',
      home: const Scaffold(
        body: ProfessionOfTheDay(),
      ),
    );
  }
}
