import 'package:flutter/material.dart';
import 'alert_type.dart';

class AlertConfig {
  static Color getColor(AlertType type) {
    switch (type) {
      case AlertType.error:
        return const Color(0xFFFF4B4B);
      case AlertType.info:
        return const Color(0xFF00E5FF);
      case AlertType.success:
      default:
        return const Color(0xFF00FF94);
    }
  }

  static IconData getIcon(AlertType type) {
    switch (type) {
      case AlertType.error:
        return Icons.warning_amber_rounded;
      case AlertType.info:
        return Icons.info_outline_rounded;
      case AlertType.success:
      default:
        return Icons.check_circle_outline_rounded;
    }
  }
}