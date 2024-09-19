import 'package:flutter/material.dart';

import '../../../shared/data/app_data.dart';
import '../../../widgets/at_symbol.dart';
import '../../../widgets/hover.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 40, 30, 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 80,
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          ...navItems.map(
            (navItem) => Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: HoverButton(
                  isDesktop: false,
                  icon: navItem['icon'],
                  text: navItem['text'],
                  height: 15,
                ),
              ),
            ),
          ),
          const AtSymbol(),
        ],
      ),
    );
  }
}
