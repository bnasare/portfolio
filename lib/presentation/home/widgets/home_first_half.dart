import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/home/widgets/hover.dart';

import '../../../shared/constants/app_spacer.dart';
import '../../../shared/constants/app_text.dart';
import '../../../shared/data/app_data.dart';
import '../../../shared/data/image_assets.dart';
import 'custom_info_card.dart';
import 'project_card.dart';

class HomeFirstHalf extends StatelessWidget {
  const HomeFirstHalf({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                        HoverText(text: 'View All'),
                      ],
                    ),
                    ...projects.map((project) => ProjectCard(
                          projectName: project.projectName,
                          company: project.company,
                          description: project.description,
                          isAndroid: project.isAndroid,
                          isIOS: project.isIOS,
                        )),
                  ],
                ),
              )),
              const AppSpacer.hLarger(),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      height: 300,
                      width: double.infinity,
                      decoration: kBodyGradientDecoration,
                      child: const AppText.large(
                        'Building Ideas with\nClean Code',
                        style: TextStyle(
                          color: Colors.white,
                          height: 1,
                          fontSize: 32,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    const AppSpacer.vLarge(),
                    CustomInfoCard(
                      shapeDecoration: kBodyGradientDecoration2,
                      title: 'You can find my products in',
                      infoList: [
                        CustomInfo(
                          label: 'Ghana',
                          imageAsset: ImageAssets.mail,
                        ),
                        CustomInfo(
                          label: 'USA',
                          imageAsset: ImageAssets.whatsapp,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
