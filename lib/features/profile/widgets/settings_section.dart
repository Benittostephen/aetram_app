import 'package:aetram_app/core/common_widgets/custom_card.dart';
import 'package:aetram_app/core/constants/app_strings.dart';
import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'settings_item.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: CustomCard(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            SettingsItem(
              icon: Icons.notifications_outlined,
              title: AppStrings.notification,
              onTap: () {},
            ),
            _buildDivider(),
            SettingsItem(
              icon: Icons.language_outlined,
              title: AppStrings.language,
              onTap: () {},
            ),
            _buildDivider(),
            SettingsItem(
              icon: Icons.security_outlined,
              title: AppStrings.security,
              onTap: () {},
            ),
            _buildDivider(),
            SettingsItem(
              icon: Icons.person_add_outlined,
              title: AppStrings.referralInvite,
              onTap: () {},
            ),
            _buildDivider(),
            SettingsItem(
              icon: Icons.description_outlined,
              title: AppStrings.legalDocuments,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 1,
      indent: 56,
      color: AppColors.lightGrey,
    );
  }
}
