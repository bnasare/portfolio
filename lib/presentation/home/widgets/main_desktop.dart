import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/home/widgets/home_second_half.dart';
import 'package:my_portfolio/presentation/home/widgets/hover.dart';

import '../../../shared/constants/app_spacer.dart';
import '../../../shared/constants/app_text.dart';
import '../../../shared/data/app_data.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 2,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  height: 280,
                  decoration: kBodyGradientDecoration,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AppText.large(
                        'Building Ideas with\nClean Code',
                        style: TextStyle(
                          color: Colors.white,
                          height: 1,
                          fontSize: 32,
                          letterSpacing: 2,
                        ),
                      ),
                      const AppSpacer.vLarger(),
                      AppText.smaller(
                        "I'm Asare Benedict Nana, currently in my second year studying Computer Science at Kwame Nkrumah University of Science and Technology. I’m all about combining solid functionality with good design, and I bring a fresh approach to every project I work on. My goal is to create user-friendly experiences that not only work smoothly but also make a lasting impression. I also focus on using Clean Architecture to build solutions that are easy to maintain and can grow over time.",
                        style: TextStyle(color: Colors.white.withOpacity(0.8)),
                      ),
                    ],
                  ),
                ),
                const AppSpacer.vertical(50),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        height: 450,
                        decoration: kBodyGradientDecoration,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppText.medium(
                                  'Featured Projects',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                HoverText(text: 'View All')
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width: double.infinity,
                              decoration: kBodyDecoration2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const AppText.smaller(
                                    'Zyptyk',
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                  const AppSpacer.vShorter(),
                                  AppText.smaller(
                                    'Zomujo Foundation',
                                    size: 13,
                                    color: Colors.grey.shade400,
                                  ),
                                  const AppSpacer.vShorter(),
                                  AppText.smaller(
                                    'The Zyptyk mobile app helps users track and improve their mental well-being through self-care exercises, mood tracking, and expert insights.',
                                    size: 12,
                                    color: Colors.grey.shade400,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width: double.infinity,
                              decoration: kBodyDecoration2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const AppText.smaller(
                                    'Superstars',
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                  const AppSpacer.vShorter(),
                                  AppText.smaller(
                                    'Get Superstars Inc.',
                                    size: 13,
                                    color: Colors.grey.shade400,
                                  ),
                                  const AppSpacer.vShorter(),
                                  AppText.smaller(
                                    'Superstars is a video-based professional networking app that connects professionals for networking, job opportunities, and career development.',
                                    size: 12,
                                    color: Colors.grey.shade400,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width: double.infinity,
                              decoration: kBodyDecoration2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const AppText.smaller(
                                    'AFC Mobile App',
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                  const AppSpacer.vShorter(),
                                  AppText.smaller(
                                    'Wise Tech',
                                    size: 13,
                                    color: Colors.grey.shade400,
                                  ),
                                  const AppSpacer.vShorter(),
                                  AppText.smaller(
                                    "This app facilitates the clients' car wash, restaurant, and laundry business operations with comprehensive management tools.",
                                    size: 12,
                                    color: Colors.grey.shade400,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const AppSpacer.hLarger(),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        height: 450,
                        decoration: kBodyGradientDecoration,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText.large(
                              'Building Ideas with\nClean Code',
                              style: TextStyle(
                                color: Colors.white,
                                height: 1,
                                fontSize: 32,
                                letterSpacing: 2,
                              ),
                            ),
                            AppSpacer.vLarger(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const AppSpacer.hLarger(),
          const HomeSecondHalf(),
        ],
      ),
    );
  }
}
