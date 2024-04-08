import 'package:flutter/material.dart';

class BottomNavItem {
  final String label;
  final IconData icon;

  BottomNavItem({required this.label, required this.icon});

  BottomNavigationBarItem Itemss() {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
