// calling time it is not working
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavItems extends GetxController {
  BottomNavigationBarItem Itemss(Icon iconn, String stt) {
    return BottomNavigationBarItem(
      icon: iconn,
      label: '$stt',
    );
  }
}
