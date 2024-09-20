import 'package:flutter/material.dart';

import '../../../shared/constants/app_spacer.dart';
import '../../../shared/constants/app_text.dart';
import '../../../shared/data/app_data.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      decoration: kBodyGradientDecoration,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText.large(
            'Building Ideas with Clean Code',
            style: TextStyle(
              color: Colors.white,
              height: 1,
              fontSize: 32,
              letterSpacing: 2,
            ),
          ),
          AppSpacer.vLarger(),
          AppText.small(
            "I'm Asare Benedict Nana, a software engineer in my second year studying Computer Science at Kwame Nkrumah University of Science and Technology. I focus on blending solid functionality with great design to create smooth, user-friendly experiences. Using Clean Architecture, I ensure my solutions are scalable and easy to maintain.",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
