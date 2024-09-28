import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import '../../../shared/constants/app_spacer.dart';
import '../../../shared/constants/app_text.dart';
import '../../../shared/data/app_data.dart';
import '../../../shared/data/image_assets.dart';
import 'custom_info_card.dart';
import 'testimonial.dart';

class HomeSecondHalf extends StatelessWidget {
  const HomeSecondHalf({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Column(
        children: [
          Container(
            height: 280,
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
                      color: Colors.grey.shade400.withOpacity(0.8),
                      width: 0.3,
                    ),
                    image: const DecorationImage(
                      image: AssetImage(ImageAssets.headshot),
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
          const AppSpacer.vertical(50),
          Container(
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
          const AppSpacer.vLarge(),
          CustomInfoCard(
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
