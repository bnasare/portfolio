import 'dart:developer';
import 'dart:js' as js;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/shared/constants/decorations.dart';
import 'package:my_portfolio/shared/data/sns_links.dart';

import '../../../shared/constants/app_text.dart';
import '../../../shared/data/app_data.dart';
import 'hover.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(150, 40, 150, 20),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: AppDecorations.wheelRadius,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  decoration: const BoxDecoration(),
                ),
              ),
            ),
          ),
          // Header content
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 120,
            decoration: kHeaderDecoration,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    log('Hey there');
                  },
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: AppText.medium(
                      '# B A N K',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.white),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    ...navItems.map((navItem) => HoverButton(
                          icon: navItem['icon'],
                          text: navItem['text'],
                        )),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: items.map((item) {
                    int index = items.indexOf(item);
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (index != 0) const SizedBox(width: 20),
                        GestureDetector(
                            onTap: () {
                              index == 0
                                  ? js.context
                                      .callMethod('open', [SnsLinks.github])
                                  : index == 1
                                      ? js.context.callMethod(
                                          'open', [SnsLinks.linkedin])
                                      : js.context.callMethod(
                                          'open', [SnsLinks.resume]);
                            },
                            child: HoverText(text: item)),
                      ],
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
