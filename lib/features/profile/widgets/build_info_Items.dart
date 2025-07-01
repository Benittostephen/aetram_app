import 'package:aetram_app/core/common_widgets/gradient_icon.dart';
import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BuildInfoItems extends StatelessWidget {
  final String text;
  final IconData icon;

  const BuildInfoItems({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Row(
            children: [
              GradientIcon(icon: icon, size: 25),
              const SizedBox(width: 16),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Divider(color: AppColors.greyDark, thickness: 1.5),
        ],
      ),
    );
  }
}
