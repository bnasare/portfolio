import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class ConfettiGenerator extends StatefulWidget {
  final Alignment alignment;
  final double blastDirection;

  const ConfettiGenerator({
    super.key,
    required this.alignment,
    required this.blastDirection,
  });

  @override
  _ConfettiGeneratorState createState() => _ConfettiGeneratorState();
}

class _ConfettiGeneratorState extends State<ConfettiGenerator> {
  late List<ConfettiController> _confettiControllers;
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _confettiControllers = List.generate(
      4, // You can adjust this number as needed
      (_) => ConfettiController(duration: const Duration(seconds: 10)),
    );
    _startConfetti();
  }

  void _startConfetti() {
    for (var controller in _confettiControllers) {
      controller.play();
    }
  }

  @override
  void dispose() {
    for (var controller in _confettiControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.alignment,
      child: ConfettiWidget(
        confettiController:
            _confettiControllers[_random.nextInt(_confettiControllers.length)],
        blastDirection: widget.blastDirection,
        emissionFrequency: 0.08,
        numberOfParticles: 15,
        maxBlastForce: 25,
        minBlastForce: 10,
        gravity: 0.2,
        colors: const [
          Colors.green,
          Colors.blue,
          Colors.pink,
          Colors.orange,
          Colors.purple,
          Colors.red,
          Colors.yellow,
        ],
        shouldLoop: true,
      ),
    );
  }
}
