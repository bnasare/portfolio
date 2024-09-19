import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../shared/constants/app_text.dart';
import '../../../shared/data/app_data.dart';
import '../../../widgets/hover.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(150, 40, 150, 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 120,
      decoration: kHeaderDecoration,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Leading "#BANK" text with pointer cursor
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
          // Centered buttons
          Row(
            children: [
              ...navItems.map((navItem) => HoverButton(
                    icon: navItem['icon'],
                    text: navItem['text'],
                  )),
            ],
          ),
          const Spacer(),

          // Trailing LinkedIn and Resume text with pointer cursors
          Row(
            mainAxisSize: MainAxisSize.min,
            children: items.map((item) {
              int index = items.indexOf(item);
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (index != 0) const SizedBox(width: 30),
                  HoverText(text: item),
                ],
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
