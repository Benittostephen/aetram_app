import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
class SettingsItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const SettingsItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: AppColors.grey, size: 20),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
      trailing: Icon(Icons.chevron_right, color: AppColors.grey),
      onTap: onTap,
    );
  }
}
