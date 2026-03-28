import 'dart:ui';
import 'package:flutter/material.dart';
import 'alert_type.dart';
import 'alert_config.dart';
import 'alert_icon.dart';
import 'alert_buttons.dart';

/// Main alert dialog widget.
///
/// Displays a modern alert dialog with blur background,
/// icon, title, message and action buttons.
///

class AwesomeAlert extends StatelessWidget {
  final String title, message;
  final String positiveText, negativeText;
  final VoidCallback onConfirm;
  final bool isSingleButton;
  final AlertType type;

  const AwesomeAlert({
    super.key,
    required this.title,
    required this.message,
    required this.onConfirm,
    this.positiveText = "CONFIRM",
    this.negativeText = "GO BACK",
    this.isSingleButton = false,
    this.type = AlertType.success,
  });

  @override
  Widget build(BuildContext context) {
    final color = AlertConfig.getColor(type);
    final icon = AlertConfig.getIcon(type);

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: _content(context, color, icon),
      ),
    );
  }

  Widget _content(BuildContext context, Color color, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF121214)..withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AlertIcon(color: color, icon: icon),
            const SizedBox(height: 20),

            Text(
              title.toUpperCase(),
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),

            const SizedBox(height: 10),

            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white60),
            ),

            const SizedBox(height: 30),

            Row(
              children: [
                if (!isSingleButton)
                  Expanded(
                    child: SecondaryButton(
                      text: negativeText,
                      onTap: () => Navigator.pop(context),
                    ),
                  ),
                if (!isSingleButton) const SizedBox(width: 10),

                Expanded(
                  child: PrimaryButton(
                    text: positiveText,
                    color: color,
                    onTap: () {
                      onConfirm();
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
