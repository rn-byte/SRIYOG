import 'package:flutter/material.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          height: 60,
          elevation: 0,
          backgroundColor: Colors.white,
          indicatorColor: Colors.grey[300],
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
    );
  }
}
