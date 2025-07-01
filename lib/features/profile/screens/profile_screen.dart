import 'package:aetram_app/core/constants/app_text_style.dart';
import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:aetram_app/features/profile/widgets/build_info_Items.dart';
import 'package:aetram_app/features/profile/widgets/build_menu_option.dart';
import 'package:aetram_app/features/profile/widgets/header_section.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            HeaderSection(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('Personal Info', style: AppTextStyles.subheading),
            ),
            const SizedBox(height: 20),
            Ink(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  BuildInfoItems(icon: Icons.person_outline, text: 'Dhana'),
                  BuildInfoItems(
                    icon: Icons.email_outlined,
                    text: 'user_dhana@gmail.com',
                  ),
                  BuildInfoItems(
                    icon: Icons.phone_outlined,
                    text: '+91 890234567',
                  ),
                  BuildInfoItems(
                    icon: Icons.calendar_month_outlined,
                    text: 'December 31, 1996',
                  ),
                  const SizedBox(height: 10),

                  // Menu Options
                  BuildMenuOption(
                    icon: Icons.notifications_outlined,
                    text: 'Notification',
                    onTap: () {},
                  ),
                  BuildMenuOption(
                    icon: Icons.language_outlined,
                    text: 'Language',
                    onTap: () {},
                  ),
                  BuildMenuOption(
                    icon: Icons.shield_outlined,
                    text: 'Security',
                    onTap: () {},
                  ),
                  BuildMenuOption(
                    icon: Icons.person_add_outlined,
                    text: 'Referral Invite',
                    onTap: () {},
                  ),
                  BuildMenuOption(
                    icon: Icons.description_outlined,
                    text: 'Legal Documents',
                    onTap: () {},
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
