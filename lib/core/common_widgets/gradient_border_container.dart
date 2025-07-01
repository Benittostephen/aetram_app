import 'package:flutter/material.dart';

class GradientBorderContainer extends StatelessWidget {
  final Widget widget;
  final Color? backgroundColor;

  const GradientBorderContainer({
    super.key,
    required this.widget,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFFc07f2f), // Light gold
            Color(0xFFe6bc50), // Yellow
            Color(0xFFc07f2f),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(1),
      // Thickness of the border
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: backgroundColor ?? Color(0xFF464646), // Inner background color
          borderRadius: BorderRadius.circular(
            50,
          ), // Match outer radius - border thickness
        ),

        child: widget,
      ),
    );
  }
}
