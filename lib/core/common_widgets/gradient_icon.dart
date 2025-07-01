import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final double size;

  const GradientIcon({super.key, required this.icon, this.size = 24});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback:
          (bounds) => const LinearGradient(
            colors: [Color(0xFFc07f2f), Color(0xFFe6bc50)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ).createShader(bounds),
      child: Icon(icon, size: size, color: AppColors.white),
    );
  }
}
