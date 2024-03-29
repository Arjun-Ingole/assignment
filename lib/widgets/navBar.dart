import 'package:flutter/material.dart';

Widget navBar() {
  return NavigationBar(destinations: const [
    NavigationDestination(
      selectedIcon: Icon(Icons.home_rounded),
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    NavigationDestination(
      selectedIcon: Icon(Icons.settings_rounded),
      icon: Icon(Icons.settings_outlined),
      label: 'Settings',
    ),
  ]);
}
