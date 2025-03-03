import 'package:flutter/material.dart';
import 'package:my_portfolio/shared/data/app_data.dart';

import '../../../../../shared/constants/app_spacer.dart';
import '../../../../../shared/constants/app_text.dart';

class ProjectCard extends StatelessWidget {
  final String projectName;
  final String company;
  final String description;
  final bool isAndroid;
  final bool isIOS;

  const ProjectCard({
    super.key,
    required this.projectName,
    required this.company,
    required this.description,
    this.isAndroid = false,
    this.isIOS = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: kBodyDecoration2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.smaller(
                projectName,
                size: 14,
                color: Colors.white,
              ),
              Row(
                children: [
                  if (isAndroid)
                    const Icon(Icons.android, color: Colors.white, size: 18),
                  if (isAndroid && isIOS) const SizedBox(width: 5),
                  if (isIOS)
                    const Icon(Icons.apple, color: Colors.white, size: 18),
                ],
              ),
            ],
          ),
          const AppSpacer.vShorter(),
          AppText.smaller(
            company,
            size: 13,
            color: Colors.grey.shade400,
          ),
          const AppSpacer.vShorter(),
          AppText.smaller(
            description,
            size: 12,
            color: Colors.grey.shade400,
          ),
        ],
      ),
    );
  }
}
