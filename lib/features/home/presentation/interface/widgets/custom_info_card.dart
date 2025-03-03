import 'package:flutter/material.dart';

import '../../../../../shared/constants/app_spacer.dart';
import '../../../../../shared/constants/app_text.dart';
import 'hover.dart';

class CustomInfoCard extends StatelessWidget {
  final ShapeDecoration shapeDecoration;
  final String title;
  final List<CustomInfo> infoList;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const CustomInfoCard({
    super.key,
    required this.title,
    required this.infoList,
    required this.shapeDecoration,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 130,
      width: double.infinity,
      decoration: shapeDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.medium(
            title,
            size: 16,
            color: Colors.white,
            padding: const EdgeInsets.only(bottom: 5),
          ),
          ...infoList.map((info) {
            return GestureDetector(
              onTap: info.onTap,
              child: Row(
                children: [
                  Material(
                    color: const Color.fromARGB(255, 50, 50, 50),
                    borderRadius: BorderRadius.circular(5),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Image.asset(
                        info.imageAsset,
                        height: 20,
                        width: 20,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const AppSpacer.hShort(),
                  title == 'Contact Me'
                      ? HoverText(
                          text: info.label,
                          textColor: Colors.grey[400],
                        )
                      : AppText.smaller(
                          info.label,
                          color: Colors.grey[400],
                        ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}

class CustomInfo {
  final String label;
  final String imageAsset;
  final VoidCallback? onTap;

  CustomInfo({
    required this.label,
    required this.imageAsset,
    this.onTap,
  });
}
