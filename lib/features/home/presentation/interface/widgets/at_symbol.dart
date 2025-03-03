import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:my_portfolio/shared/constants/decorations.dart';

import '../../../../../shared/constants/app_text.dart';
import '../../../../../shared/data/sns_links.dart';

class AtSymbol extends StatelessWidget {
  const AtSymbol({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: PopupMenuButton<String>(
        surfaceTintColor: Colors.transparent,
        splashRadius: 0,
        shadowColor: Colors.transparent,
        style: ButtonStyle(
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          splashFactory: NoSplash.splashFactory,
          mouseCursor: WidgetStateProperty.all(MouseCursor.uncontrolled),
        ),
        enableFeedback: false,
        tooltip: 'Connect with me',
        menuPadding: const EdgeInsets.symmetric(horizontal: 20),
        color: const Color(0xFF1A1A1A),
        padding: const EdgeInsets.all(0),
        onSelected: (value) {
          if (value == 'resume') {
            js.context.callMethod('open', [AppLinks.resume]);
          }
          if (value == 'linkedin') {
            js.context.callMethod('open', [AppLinks.linkedin]);
          }
          if (value == 'github') {
            js.context.callMethod('open', [AppLinks.github]);
          }
        },
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem<String>(
              value: 'github',
              height: 40,
              padding: EdgeInsets.zero,
              child: Container(
                color: Colors.transparent,
                child: const AppText.smaller(
                  'Github',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            PopupMenuItem<String>(
              value: 'resume',
              height: 40,
              padding: EdgeInsets.zero,
              child: Container(
                color: Colors.transparent,
                child: const AppText.smaller(
                  'Resume',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            PopupMenuItem<String>(
              value: 'linkedin',
              height: 40,
              padding: EdgeInsets.zero,
              child: Container(
                color: Colors.transparent,
                child: const AppText.smaller(
                  'LinkedIn',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ];
        },
        offset: const Offset(0, 65),
        shape: const RoundedRectangleBorder(
          borderRadius: AppDecorations.tinyRadius,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            splashFactory: NoSplash.splashFactory,
            child: Container(
              height: 50,
              width: 50,
              decoration: ShapeDecoration(
                shape: const StadiumBorder(),
                color: Colors.grey.withOpacity(0.08),
              ),
              child: const Center(
                child: AppText.medium('@',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
