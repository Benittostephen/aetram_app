import 'package:aetram_app/core/common_widgets/custom_card.dart';
import 'package:aetram_app/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'profile_info_item.dart';

class PersonalInfoSection extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String dateOfBirth;

  const PersonalInfoSection({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
    required this.dateOfBirth,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.personalInfo,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20),
          ProfileInfoItem(icon: Icons.person_outline, text: name),
          ProfileInfoItem(icon: Icons.email_outlined, text: email),
          ProfileInfoItem(icon: Icons.phone_outlined, text: phone),
          ProfileInfoItem(icon: Icons.calendar_today_outlined, text: dateOfBirth),
        ],
      ),
    );
  }
}
