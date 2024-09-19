import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/home/widgets/header_desktop.dart';
import 'package:my_portfolio/presentation/home/widgets/header_mobile.dart';

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
          return Column(
            children: [
              // Static Header
              constraints.maxWidth >= 1280.0
                  ? const HeaderDesktop()
                  : const HeaderMobile(),
              // Scrollable content
              Expanded(
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: const SingleChildScrollView(
                    child: Column(
                      children: [
                        // Main
                        SizedBox(
                          width: double.infinity,
                          height: 500,
                        ),
                        // Skills and Projects
                        SizedBox(
                          width: double.infinity,
                          height: 500,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
