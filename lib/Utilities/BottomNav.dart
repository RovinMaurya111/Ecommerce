import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'BottomNavItem.dart';

class BottomNav {
  final RxInt currentIndex;

  BottomNav(this.currentIndex);

  BottomNavigationBar NavBarr() {
    return BottomNavigationBar(
      currentIndex: currentIndex.value,
      onTap: (index) {
        currentIndex.value = index;
      },
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: IconThemeData(color: Colors.blue),
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      selectedLabelStyle: TextStyle(color: Colors.blue),
      unselectedLabelStyle: TextStyle(color: Colors.grey),
      items: [
        BottomNavItem(label: 'Home', icon: Icons.home).Itemss(),
        BottomNavItem(label: 'Setting', icon: Icons.settings).Itemss(),
        BottomNavItem(label: 'Cart', icon: Icons.shopping_cart).Itemss(),
        BottomNavItem(label: 'Profile', icon: Icons.person).Itemss(),
      ],
    );
  }
}
