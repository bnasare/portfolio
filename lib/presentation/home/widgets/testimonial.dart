import 'package:flutter/material.dart';

import '../../../shared/constants/app_spacer.dart';
import '../../../shared/constants/app_text.dart';
import '../../../shared/data/app_data.dart';

class Testimonial extends StatelessWidget {
  final String name;
  final String title;
  final String quote;

  const Testimonial({
    super.key,
    required this.name,
    required this.title,
    required this.quote,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      decoration: kBodyDecoration2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.smaller(
            name,
            size: 13.5,
            color: Colors.white,
          ),
          const AppSpacer.vShorter(),
          AppText.smaller(
            title,
            size: 13,
            color: Colors.grey.shade400,
          ),
          const AppSpacer.vShorter(),
          AppText.smaller(
            quote,
            size: 12,
            color: Colors.grey.shade400,
          )
        ],
      ),
    );
  }
}
