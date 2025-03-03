import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/presentation/interface/widgets/confetti_generator.dart';

import '../../../../../shared/presentation/theme/theme.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late List<ConfettiController> _confettiControllers;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 2.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _confettiControllers = List.generate(
        6, // Number of confetti sources
        (_) =>
            ConfettiController(duration: const Duration(milliseconds: 2500)));

    _controller.forward();

    Future.delayed(const Duration(milliseconds: 500), () {
      for (var controller in _confettiControllers) {
        controller.play();
      }
    });

    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const HomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var fadeAnimation =
                Tween<double>(begin: 0.0, end: 1.0).animate(animation);
            return FadeTransition(opacity: fadeAnimation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 500),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    for (var controller in _confettiControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  // Helper method to create confetti at different positions

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkTheme.scaffoldBackgroundColor,
      body: Stack(
        children: [
          // Confetti sources across the screen
          const ConfettiGenerator(
              alignment: Alignment.topLeft, blastDirection: pi / 4),
          const ConfettiGenerator(
              alignment: Alignment.topCenter, blastDirection: pi / 2),
          const ConfettiGenerator(
              alignment: Alignment.topRight, blastDirection: 3 * pi / 4),
          const ConfettiGenerator(
              alignment: Alignment.centerLeft, blastDirection: 0),
          const ConfettiGenerator(
              alignment: Alignment.centerRight, blastDirection: pi),
          const ConfettiGenerator(
              alignment: Alignment.bottomCenter, blastDirection: -pi / 2),

          // Centered text with animation
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.scale(
                  scale: _scaleAnimation.value,
                  child: const Text(
                    '#BANK',
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 3.0,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
