library biofpo_message;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BioFpoMessage {
  /// نمایش پیام موفقیت
  static void showSuccess({
    required String title,
    required String message,
    SnackPosition position = SnackPosition.TOP,
  }) {
    _showSnackbar(
      title: title,
      message: message,
      backgroundColor: Colors.green,
      icon: Icons.check_circle,
      position: position,
    );
  }

  /// نمایش پیام خطا
  static void showError({
    required String title,
    required String message,
    SnackPosition position = SnackPosition.TOP,
  }) {
    _showSnackbar(
      title: title,
      message: message,
      backgroundColor: Colors.red,
      icon: Icons.error,
      position: position,
    );
  }

  /// نمایش پیام اطلاعاتی
  static void showInfo({
    required String title,
    required String message,
    SnackPosition position = SnackPosition.TOP,
  }) {
    _showSnackbar(
      title: title,
      message: message,
      backgroundColor: Colors.blue,
      icon: Icons.info,
      position: position,
    );
  }

  /// متد عمومی برای نمایش پیام‌ها
  static void _showSnackbar({
    required String title,
    required String message,
    required Color backgroundColor,
    required IconData icon,
    SnackPosition position = SnackPosition.TOP,
  }) {
    Get.snackbar(
      "موفقیت",
      "عملیات با موفقیت انجام شد",
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      borderRadius: 12,
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(16),
      duration: const Duration(seconds: 3),
      animationDuration: const Duration(milliseconds: 400),
      forwardAnimationCurve: Curves.easeOutBack,
      reverseAnimationCurve: Curves.easeInBack,
      icon: const Icon(Icons.check_circle, color: Colors.white, size: 28),
      mainButton: TextButton(
        onPressed: () {
          print("دکمه کلیک شد");
        },
        child: const Text("مشاهده", style: TextStyle(color: Colors.white)),
      ),
      borderColor: Colors.white,
      borderWidth: 2,
      boxShadows: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 8,
          spreadRadius: 2,
          offset: Offset(2, 2),
        ),
      ],
      overlayBlur: 2.0,
      overlayColor: Colors.black.withOpacity(0.3),
      showProgressIndicator: true,
      progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(Colors.white),
    );

  }
}
