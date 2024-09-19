import 'package:flutter/material.dart';
import 'package:smooth_corner/smooth_corner.dart';

import '../shared/constants/app_text.dart';
import '../shared/constants/decorations.dart';

class HoverButton extends StatefulWidget {
  final IconData icon;
  final String text;
  final double height;
  final bool isDesktop;

  const HoverButton(
      {super.key,
      required this.icon,
      required this.text,
      this.height = 25,
      this.isDesktop = true});

  @override
  HoverButtonState createState() => HoverButtonState();
}

class HoverButtonState extends State<HoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: widget.isDesktop == true ? 10 : 0),
        width: 150,
        decoration: ShapeDecoration(
          shape: SmoothRectangleBorder(
            smoothness: 1.2,
            borderRadius: widget.isDesktop == true
                ? AppDecorations.cardInnerRadius
                : AppDecorations.cardRadius,
          ),
          color: isHovered
              ? Colors.white.withOpacity(0.15)
              : Colors.grey.withOpacity(0.03),
        ),
        padding: EdgeInsets.symmetric(vertical: widget.height),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.icon, color: Colors.white, size: 18),
            const SizedBox(width: 10),
            AppText.smaller(widget.text,
                style: const TextStyle(color: Colors.white, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}

class HoverText extends StatefulWidget {
  final String text;

  const HoverText({super.key, required this.text});

  @override
  HoverTextState createState() => HoverTextState();
}

class HoverTextState extends State<HoverText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AppText.smaller(
        widget.text,
        style: TextStyle(
          color: Colors.white,
          decoration:
              isHovered ? TextDecoration.underline : TextDecoration.none,
          decorationThickness: 2,
          decorationColor: Colors.white,
        ),
      ),
    );
  }
}
