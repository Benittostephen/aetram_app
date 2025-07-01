import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ServiceItem extends StatelessWidget {
  final String icon;
  final String label;
  final VoidCallback onTap;

  const ServiceItem({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(12), // Rounded corners
          onTap: onTap,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.grey.withValues(alpha: 0.1),
                width: 1.5,
              ),
              // Outline border
              borderRadius: BorderRadius.circular(12), // Rounded corners
            ),
            child: Center(
              child: SvgPicture.asset(
                icon,
                colorFilter: ColorFilter.mode(
                  AppColors.greyDark,
                  BlendMode.srcIn,
                ),
                height: 25,
              ), // Replace with any icon
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: AppColors.greyDark,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
