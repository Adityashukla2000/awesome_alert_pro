import 'package:flutter/material.dart';

class AlertIcon extends StatelessWidget {
  final Color color;
  final IconData icon;

  const AlertIcon({super.key, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(0.1),
        border: Border.all(color: color.withOpacity(0.2), width: 2),
      ),
      child: Icon(icon, color: color, size: 40),
    );
  }
}