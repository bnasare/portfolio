import 'package:flutter/material.dart';
import 'package:my_portfolio/shared/presentation/theme/theme.dart';

import 'features/home/presentation/interface/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      title: 'Asare Benedict Nana',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
