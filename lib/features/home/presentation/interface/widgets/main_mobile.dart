import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/presentation/interface/widgets/home_first_half.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import '../../../../../shared/constants/app_spacer.dart';
import '../../../../../shared/constants/app_text.dart';
import '../../../../../shared/data/app_data.dart';
import '../../../../../shared/data/image_assets.dart';
import 'custom_info_card.dart';
import 'hover.dart';
import 'project_card.dart';
import 'testimonial.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // First container - Introduction section
          Container(
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
                AppText.smaller(
                  "I'm Asare Benedict Nana, a software engineer in my second year studying Computer Science at Kwame Nkrumah University of Science and Technology. I focus on blending solid functionality with great design to create smooth, user-friendly experiences. Using Clean Architecture, I ensure my solutions are scalable and easy to maintain.",
                  style: TextStyle(color: Colors.white),
                ),
                AppSpacer.vLarger(),
              ],
            ),
          ),

          // Second container - Featured Projects with ListView
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
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
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: 300,
            width: double.infinity,
            decoration: kBodyDecoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppText.medium(
                  'Testimonials',
                  size: 16,
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 15),
                ),
                ...testimonials.map((testimonial) => Testimonial(
                      name: testimonial.name,
                      title: testimonial.title,
                      quote: testimonial.quote,
                    )),
              ],
            ),
          ),

          CustomInfoCard(
            margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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

          CustomInfoCard(
            margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            shapeDecoration: kBodyDecoration2,
            title: 'Contact Me',
            infoList: [
              CustomInfo(
                label: 'benedictasare2@gmail.com',
                imageAsset: ImageAssets.mail,
                onTap: () async {
                  const email = 'mailto:benedictasare2@gmail.com';
                  await launchUrlString(email);
                },
              ),
              CustomInfo(
                label: '(+233)-57-671-1041',
                imageAsset: ImageAssets.whatsapp,
                onTap: () async {
                  final link = const WhatsAppUnilink(
                    phoneNumber: '(+233)-57-671-1041',
                    text: 'Hello, this is a WhatsApp message',
                  ).toString();
                  await launchUrlString(link);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
