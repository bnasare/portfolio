import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/home/widgets/header_desktop.dart';
import 'package:my_portfolio/presentation/home/widgets/header_tablet.dart';
import 'package:my_portfolio/presentation/home/widgets/main_mobile.dart';

import '../widgets/main_desktop.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isDesktop = constraints.maxWidth >= 1280.0;
          return Stack(
            children: [
              // Scrollable
              ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(scrollbars: false),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: isDesktop ? 200 : 160),
                      // Main content
                      isDesktop ? const MainDesktop() : const MainMobile(),
                      // Skills and Projects
                      // const SizedBox(
                      //   width: double.infinity,
                      //   height: 700,
                      // ),
                    ],
                  ),
                ),
              ),
              // Static Header on top
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: isDesktop ? const HeaderDesktop() : const HeaderTablet(),
              ),
            ],
          );
        },
      ),
    );
  }
}
