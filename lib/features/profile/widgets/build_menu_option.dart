import 'package:aetram_app/core/common_widgets/gradient_icon.dart';
import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BuildMenuOption extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const BuildMenuOption({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  color: AppColors.grey.withValues(alpha: 0.2),
                  shape: BoxShape.circle,
                ),
                child: GradientIcon(icon: icon, size: 30),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const GradientIcon(icon: Icons.arrow_forward_ios, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
