import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snackbarr {
  SnackBar snackbarr(BuildContext context, String st) {
    return SnackBar(
      content: Text("$st"),
      duration: Duration(seconds: 5), // Adjust the duration as needed
      backgroundColor: Colors.blue.shade900,
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );
  }
}
