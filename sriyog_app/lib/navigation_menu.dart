import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sriyog_app/utils/helpers/helper.dart';

import 'features/hr_services/screen/home/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final isDark = SpHelper.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 60,
            elevation: 0,
            backgroundColor: isDark ? Colors.grey[900] : Colors.grey[200],
            indicatorColor: isDark ? Colors.grey.withOpacity(0.6) : Colors.grey[400],
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (value) => controller.selectedIndex.value = value,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
              NavigationDestination(icon: Icon(Icons.work_outline), label: 'Professions'),
              NavigationDestination(
                  icon: Icon(
                    Icons.add,
                    size: 30,
                  ),
                  label: ''),
              NavigationDestination(icon: Icon(Icons.search_rounded), label: 'Search'),
              NavigationDestination(icon: Icon(Icons.contact_phone_outlined), label: 'Contacts'),
            ]),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  final screen = [
    const SpHomeScreen(),
    const SpHomeScreen(),
    const SpHomeScreen(),
    const SpHomeScreen(),
    const SpHomeScreen(),
  ];
}
