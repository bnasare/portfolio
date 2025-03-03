import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/presentation/interface/widgets/hover.dart';
import 'package:my_portfolio/shared/constants/decorations.dart';

import '../../../../../shared/constants/app_spacer.dart';
import '../../../../../shared/constants/app_text.dart';
import '../../../../../shared/data/app_data.dart';
import '../../../../../shared/data/image_assets.dart';
import '../../../../../shared/widgets/snackbar.dart';
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
                  padding: const EdgeInsets.only(right: 50),
                  align: TextAlign.justify,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const AppText.medium(
                          'Featured Projects',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              log('message');
                            },
                            child: HoverText(
                              text: 'View All',
                              onTap: () {
                                SnackBarHelper.showInfoSnackBar(context,
                                    "Portfolio highlights coming soon. Stay tuned!");
                              },
                            )),
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
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: AppText.medium(
                              'Tool Kit',
                              size: 16,
                              color: Colors.white,
                              padding: EdgeInsets.only(top: 20),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconWidget(imagePath: ImageAssets.flutter),
                                    AppSpacer.vLarge(),
                                    IconWidget(imagePath: ImageAssets.node)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconWidget(imagePath: ImageAssets.postman),
                                    IconWidget(imagePath: ImageAssets.docker),
                                    IconWidget(imagePath: ImageAssets.git)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconWidget(imagePath: ImageAssets.firebase),
                                    AppSpacer.vLarge(),
                                    IconWidget(imagePath: ImageAssets.mongo)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const AppSpacer.vLarge(),
                    CustomInfoCard(
                      shapeDecoration: kBodyGradientDecoration2,
                      title: 'You can find my products in',
                      infoList: [
                        CustomInfo(
                          label: 'Ghana',
                          imageAsset: ImageAssets.ghana,
                        ),
                        CustomInfo(
                          label: 'USA',
                          imageAsset: ImageAssets.USA,
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

class IconWidget extends StatelessWidget {
  final IconData? icon;
  final Color? color;
  final String? imagePath;

  const IconWidget({
    super.key,
    this.icon,
    this.color,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: AppDecorations.tinyRadius,
      ),
      child: imagePath != null
          ? Image.asset(imagePath!)
          : Icon(icon ?? Icons.apps, color: color ?? Colors.white, size: 30),
    );
  }
}
