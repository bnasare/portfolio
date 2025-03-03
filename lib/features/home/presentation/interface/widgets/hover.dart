import 'package:flutter/material.dart';
import 'package:my_portfolio/shared/widgets/snackbar.dart';
import 'package:smooth_corner/smooth_corner.dart';

import '../../../../../shared/constants/app_text.dart';
import '../../../../../shared/constants/decorations.dart';

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
      child: GestureDetector(
        onTap: () {
          // Only show message if the text is NOT "Home"
          if (widget.text != "Home") {
            SnackBarHelper.showInfoSnackBar(
              context,
              _getConstructionMessage(widget.text),
            );
          }
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: widget.isDesktop ? 10 : 0),
          constraints: const BoxConstraints(minWidth: 150),
          decoration: ShapeDecoration(
            shape: SmoothRectangleBorder(
              smoothness: 1.2,
              borderRadius: widget.isDesktop
                  ? AppDecorations.cardInnerRadius
                  : AppDecorations.cardRadius,
            ),
            color: isHovered
                ? Colors.white.withOpacity(0.15)
                : const Color(0xFF1A1A1A),
          ),
          padding:
              EdgeInsets.symmetric(vertical: widget.height, horizontal: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.isDesktop) ...[
                Icon(widget.icon, color: Colors.white, size: 18),
                const SizedBox(width: 10),
              ],
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                  child: AppText.smaller(
                    widget.text,
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to get a beautiful construction message based on the button text
  String _getConstructionMessage(String buttonText) {
    switch (buttonText) {
      case "My Work":
        return "I'm crafting a showcase of my finest projects. Please check back soon to explore my portfolio!";
      case "About Me":
        return "My story is being carefully written. Soon you'll be able to learn more about my journey and expertise.";
      case "Contact":
        return "I'm setting up the perfect way for us to connect. The contact section will be available shortly!";
      case "Blog":
        return "My thoughts and insights are coming soon. The blog section is currently under development.";
      case "Resume":
        return "My professional experience is being formatted for your review. The resume section will be available soon!";
      default:
        return "The $buttonText section is under construction. Please check back soon for updates!";
    }
  }
}

class HoverText extends StatefulWidget {
  final String text;
  final Color? textColor;
  final VoidCallback? onTap; // Added onTap callback

  const HoverText({
    super.key,
    required this.text,
    this.textColor,
    this.onTap, // Add this parameter
  });

  @override
  HoverTextState createState() => HoverTextState();
}

class HoverTextState extends State<HoverText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Wrap with GestureDetector
      onTap: () {
        // Execute the provided callback if it exists
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: AppText.smaller(
          widget.text,
          style: TextStyle(
            fontSize: 14,
            color: widget.textColor ?? Colors.white,
            decoration:
                isHovered ? TextDecoration.underline : TextDecoration.none,
            decorationThickness: 2,
            decorationColor: widget.textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
