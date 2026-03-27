import 'package:flutter/material.dart';
import 'awesome_alert_widget.dart';
import 'alert_type.dart';

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