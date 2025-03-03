import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class SnackBarHelper {
  static void showSuccessSnackBar(BuildContext context, String message) {
    _showCustomSnackBar(
      context,
      message,
      IconlyBold.shield_done,
      const Color(0xFF4CAF50), // Changed to a different green
    );
  }

  static void showInfoSnackBar(BuildContext context, String message) {
    _showCustomSnackBar(
      context,
      message,
      IconlyBold.info_circle,
      const Color(0xFF2196F3), // Changed to blue
    );
  }

  static void showErrorSnackBar(BuildContext context, String message) {
    _showCustomSnackBar(
      context,
      message,
      IconlyBold.shield_fail,
      const Color(0xFFF44336), // Changed to a different red
    );
  }

  static void showWarningSnackBar(BuildContext context, String message) {
    _showCustomSnackBar(
      context,
      message,
      IconlyBold.time_square,
      const Color(0xFFFF9800), // Changed to a different orange
    );
  }

  static void _showCustomSnackBar(
    BuildContext context,
    String message,
    IconData iconData,
    Color backgroundColor, {
    bool persist = false,
  }) {
    showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.success(
          message: message,
          messagePadding: const EdgeInsets.symmetric(horizontal: 10),
          borderRadius: BorderRadius.zero,
          backgroundColor: backgroundColor,
          iconRotationAngle: -30,
          iconPositionLeft: 40,
          iconPositionTop: -15,
          maxLines: 5,
          textAlign: TextAlign.start,
          textStyle: const TextStyle(
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        persistent: persist,
        padding: EdgeInsets.zero,
        curve: Curves.ease,
        animationDuration: const Duration(seconds: 1),
        displayDuration: const Duration(seconds: 2));
  }
}
