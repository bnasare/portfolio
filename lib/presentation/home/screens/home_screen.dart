import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/home/widgets/header_desktop.dart';
import 'package:my_portfolio/presentation/home/widgets/header_mobile.dart';
import 'package:my_portfolio/shared/constants/app_spacer.dart';
import 'package:my_portfolio/shared/data/app_data.dart';
import 'package:my_portfolio/shared/data/image_assets.dart';

import '../../../shared/constants/app_text.dart';

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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // Main
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 150.0, vertical: 10),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 2,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  height: 300,
                                  decoration: kBodyGradientDecoration,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const AppText.larger(
                                        'Bringing Ideas to Life with\nOutstanding Design',
                                        style: TextStyle(
                                          color: Colors.white,
                                          height: 1,
                                          letterSpacing: 2,
                                        ),
                                      ),
                                      const AppSpacer.vLarger(),
                                      AppText.smaller(
                                        "I'm Asare Benedict Nana, currently in my second year studying Computer Science at Kwame Nkrumah University of Science and Technology. I’m all about combining solid functionality with good design, and I bring a fresh approach to every project I work on. My goal is to create user-friendly experiences that not only work smoothly but also make a lasting impression. I also focus on using Clean Architecture to build solutions that are easy to maintain and can grow over time.",
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.8)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const AppSpacer.hLarger(),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: 300,
                                  width: double.infinity,
                                  decoration: kBodyDecoration,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 130,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            width: 0.8,
                                          ),
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                ImageAssets.headshot),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const AppSpacer.vShort(),
                                      const AppText.smaller(
                                        'Asare Benedict Nana',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const AppSpacer.vShorter(),
                                      AppText.small(
                                        'Software Engineer',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        // Skills and Projects
                        const SizedBox(
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
