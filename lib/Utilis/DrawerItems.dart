// calling time it is not working
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DItems extends GetxController {
  DrawerItems(Icon iconn, String stt) {
    return ListTile(
      leading: iconn,
      title: Text('$stt'),
    );
  }
}
