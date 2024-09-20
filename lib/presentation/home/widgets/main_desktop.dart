import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/home/widgets/home_second_half.dart';

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
            child: Container(
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
          ),
          const AppSpacer.hLarger(),
          const HomeSecondHalf(),
        ],
      ),
    );
  }
}
