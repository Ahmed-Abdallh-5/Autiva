import 'package:flutter/widgets.dart';

class ActivityItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;
  final Widget? page;

  ActivityItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
    this.page,
  });
}
