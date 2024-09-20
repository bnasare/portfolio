import 'package:flutter/material.dart';
import 'package:smooth_corner/smooth_corner.dart';

import '../../presentation/home/widgets/testimonial.dart';
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

const items = ['Github', 'LinkedIn', 'Resume'];

ShapeDecoration kHeaderDecoration = ShapeDecoration(
  color: Colors.transparent,
  shape: SmoothRectangleBorder(
    side: BorderSide(color: Colors.white.withOpacity(0.15), width: 1),
    smoothness: 1.2,
    borderRadius: AppDecorations.wheelRadius,
  ),
);

ShapeDecoration kBodyDecoration = ShapeDecoration(
  shape: SmoothRectangleBorder(
    side: BorderSide(color: Colors.white.withOpacity(0.15), width: 1),
    smoothness: 1.2,
    borderRadius: AppDecorations.cardRadius,
  ),
);

ShapeDecoration kBodyDecoration2 = ShapeDecoration(
  shape: SmoothRectangleBorder(
    side: BorderSide(color: Colors.white.withOpacity(0.15), width: 1),
    smoothness: 1.2,
    borderRadius: AppDecorations.cardInnerRadius,
  ),
);

ShapeDecoration kBodyGradientDecoration = ShapeDecoration(
  shape: SmoothRectangleBorder(
    side: BorderSide(color: Colors.white.withOpacity(0.15), width: 1),
    smoothness: 1.2,
    borderRadius: AppDecorations.cardRadius,
  ),
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    // end: Alignment.topCenter,
    stops: const [0, 0.5],
    colors: [
      Colors.white.withOpacity(0.1),
      Colors.white.withOpacity(0.0),
    ],
  ),
);

List<Testimonial> testimonials = [
  const Testimonial(
    name: 'Shachar Golan, MBA',
    title: 'Get Superstars Inc.',
    quote:
        '"I was excited to work with Benedict and get to work on a project that exceeded my expectations. He was a pleasure to work with and I can\'t recommend him enough."',
  ),
  const Testimonial(
    name: 'Dr. Teata Duut',
    title: 'Zomujo Foundation',
    quote:
        '"Benedict has a keen eye for detail; a valuable asset to any team."',
  ),
];
