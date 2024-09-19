import 'package:flutter/material.dart';
import 'package:smooth_corner/smooth_corner.dart';

import '../constants/decorations.dart';

List<Map<String, dynamic>> navItems = [
  {
    'icon': Icons.home_outlined,
    'text': 'Home',
  },
  {
    'icon': Icons.home_repair_service_outlined,
    'text': 'My Work',
  },
  {
    'icon': Icons.person_3_outlined,
    'text': 'About Me',
  },
];

const items = ['LinkedIn', 'Resume'];

ShapeDecoration kHeaderDecoration = ShapeDecoration(
  color: Colors.white.withOpacity(0.009),
  shape: SmoothRectangleBorder(
    side: BorderSide(color: Colors.white.withOpacity(0.15), width: 2),
    smoothness: 1.2,
    borderRadius: AppDecorations.wheelRadius,
  ),
);
