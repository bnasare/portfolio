import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../shared/constants/decorations.dart';
import '../../../shared/data/app_data.dart';
import 'at_symbol.dart';
import 'hover.dart';

class HeaderTablet extends StatelessWidget {
  const HeaderTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 40, 30, 20),
      child: Stack(
        children: [
          // Blurred background
          Positioned.fill(
            child: ClipRRect(
              borderRadius: AppDecorations.wheelRadius,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(),
              ),
            ),
          ),
          // Header content
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 80,
            decoration: kHeaderDecoration,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: navItems
                        .map((navItem) => Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: HoverButton(
                                  isDesktop: false,
                                  icon: navItem['icon'],
                                  text: navItem['text'],
                                  height: 15,
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                const AtSymbol(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
