import 'package:flutter/material.dart';
import 'awesome_alert_widget.dart';
import 'alert_type.dart';

/// Shows an Awesome Alert dialog.
///
/// This is a helper method to quickly display alerts.
///
/// Example:
/// ```dart
/// showAwesomeAlert(
///   context: context,
///   title: "Success",
///   message: "Done",
///   onConfirm: () {},
/// );
/// ```
Future<void> showAwesomeAlert({
  required BuildContext context,
  required String title,
  required String message,
  required VoidCallback onConfirm,
  AlertType type = AlertType.success,
  bool isSingleButton = false,
}) {
  return showDialog(
    context: context,
    builder: (_) => AwesomeAlert(
      title: title,
      message: message,
      onConfirm: onConfirm,
      type: type,
      isSingleButton: isSingleButton,
    ),
  );
}
