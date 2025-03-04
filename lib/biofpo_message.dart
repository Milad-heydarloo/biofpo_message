library biofpo_message;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BioFpoMessage {
  static void showSuccess({required String title, required String message}) {
    _showSnackbar(title: title, message: message, backgroundColor: Colors.green);
  }

  static void showError({required String title, required String message}) {
    _showSnackbar(title: title, message: message, backgroundColor: Colors.red);
  }

  static void showInfo({required String title, required String message}) {
    _showSnackbar(title: title, message: message, backgroundColor: Colors.blue);
  }

  static void _showSnackbar({required String title, required String message, required Color backgroundColor}) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: backgroundColor,
      colorText: Colors.white,
      borderRadius: 12,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(16),
      duration: Duration(seconds: 3),
      animationDuration: Duration(milliseconds: 500),
      forwardAnimationCurve: Curves.easeOutBack,
      reverseAnimationCurve: Curves.easeInBack,
    );
  }
}
