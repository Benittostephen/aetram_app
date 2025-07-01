import 'package:aetram_app/core/common_widgets/gradient_border_container.dart';
import 'package:aetram_app/core/common_widgets/gradient_text.dart';
import 'package:aetram_app/core/constants/app_strings.dart';
import 'package:aetram_app/core/constants/app_text_style.dart';
import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF464646),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100, // soft shadow
            offset: Offset(0, -7), // x=0, y=6 -> bottom only
            blurRadius: 20, // smoothness
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          // App Bar
          Stack(
            alignment: Alignment.center,
            children: [
              // Row for left and right buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GradientBorderContainer(
                    widget: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                  GradientBorderContainer(
                    widget: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit_calendar,
                            size: 20,
                            color: AppColors.white,
                          ),
                          SizedBox(width: 10),
                          Text('Edit', style: AppTextStyles.body),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Centered Title
              GradientText(
                text: AppStrings.profile,
                textStyle: AppTextStyles.subheading,
              ),
            ],
          ),

          const SizedBox(height: 20),
          // Profile Picture
          Stack(
            children: [
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.green.shade600, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(6, 6), // x=6 (right), y=6 (down)
                      blurRadius: 10,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 47,
                  backgroundImage: AssetImage('assets/images/person_image.jpg'),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: SvgPicture.asset(
                  'assets/icons/verification_mark.svg',
                  height: 24,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Name and Email
          const Text(
            'Hello Dhana',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'user_dhana@gmail.com',
            style: TextStyle(
              color: AppColors.white.withValues(alpha: 0.9),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
