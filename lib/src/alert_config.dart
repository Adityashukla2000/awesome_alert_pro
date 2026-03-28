import 'package:flutter/material.dart';
import 'alert_type.dart';

/// Provides configuration like colors and icons
/// based on the selected [AlertType].
class AlertConfig {
  /// Returns color based on alert type.
  static Color getColor(AlertType type) => switch (type) {
    AlertType.error => const Color(0xFFFF4B4B),
    AlertType.info => const Color(0xFF00E5FF),
    AlertType.success => const Color(0xFF00FF94),
  };

  /// Returns icon based on alert type.
  static IconData getIcon(AlertType type) => switch (type) {
    AlertType.error => Icons.warning_amber_rounded,
    AlertType.info => Icons.info_outline_rounded,
    AlertType.success => Icons.check_circle_outline_rounded,
  };
}
