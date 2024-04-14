import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utilis/NavItems.dart';

class BottomNav extends GetxController {
  var currentIndex = 0.obs;
  var controller = Get.put(NavItems());
  BottomNavigationBar BotNav() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Setting',
        ),
      ],
      currentIndex: currentIndex.value,
      selectedItemColor: Colors.pink,
      onTap: (value) {
        currentIndex.value = value;
      },
    );
  }
}
