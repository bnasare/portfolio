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

ShapeDecoration kBodyGradientDecoration2 = ShapeDecoration(
  shape: SmoothRectangleBorder(
    side: BorderSide(color: Colors.white.withOpacity(0.15), width: 1),
    smoothness: 1.2,
    borderRadius: AppDecorations.cardInnerRadius,
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

class Project {
  final String projectName;
  final String company;
  final String description;
  final bool isAndroid;
  final bool isIOS;

  Project({
    required this.projectName,
    required this.company,
    required this.description,
    this.isAndroid = false,
    this.isIOS = false,
  });
}


final List<Project> projects = [
  Project(
    projectName: 'Zyptyk',
    company: 'Zomujo Foundation',
    description:
        'The Zyptyk mobile app helps users track and improve their mental well-being through self-care exercises, mood tracking, and expert insights.',
    isAndroid: true,
    isIOS: true,
  ),
  Project(
    projectName: 'Superstars',
    company: 'Get Superstars Inc.',
    description:
        'Superstars is a video-based professional networking app that connects professionals for networking, job opportunities, and career development.',
    isAndroid: true,
    isIOS: true,
  ),
  Project(
    projectName: 'AFC',
    company: 'Wise Tech',
    description:
        'This app facilitates the clients\' car wash, restaurant, and laundry business operations with comprehensive management tools.',
    isAndroid: true,
  ),
];
