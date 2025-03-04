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

  /// متد عمومی برای نمایش پیام‌ها با آیکون در سمت چپ
  static void _showSnackbar({
    required String title,
    required String message,
    required Color backgroundColor,
    required IconData icon,
    SnackPosition position = SnackPosition.TOP,
  }) {
    Get.snackbar(
      "", // عنوان را در `messageText` مدیریت می‌کنیم
      "",
      snackPosition: position,
      backgroundColor: backgroundColor,
      colorText: Colors.white,
      borderRadius: 12,
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(16),
      duration: const Duration(seconds: 3),
      animationDuration: const Duration(milliseconds: 400),
      forwardAnimationCurve: Curves.easeOutBack,
      reverseAnimationCurve: Curves.easeInBack,

      /// طراحی کاستوم برای نمایش آیکون در سمت چپ
      messageText: Row(
        children: [
          /// آیکون در سمت چپ


          /// فاصله بین آیکون و متن
          const SizedBox(width: 12),

          /// متن‌ها در سمت راست
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.start,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start
                  ,
                  children: [
                  Icon(icon, color: Colors.white, size: 28),
                ],),

                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),

                  const SizedBox(height: 4),
                Text(
                  "",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),
                  const SizedBox(height: 4),
                Text(
                  "",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),

              ],
            ),
          ),
        ],
      ),

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
    );
  }
}
