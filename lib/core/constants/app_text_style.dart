import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle heading = TextStyle(
    color: AppColors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle subheading = TextStyle(
    color: AppColors.white,
    fontSize: 19,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle body = TextStyle(
    color: AppColors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle caption = TextStyle(
    color: AppColors.lightGrey,
    fontSize: 14,
  );

  static const TextStyle golden = TextStyle(
    color: AppColors.golden,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}
