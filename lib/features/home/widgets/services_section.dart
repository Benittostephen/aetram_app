import 'package:aetram_app/core/common_widgets/custom_card.dart';
import 'package:aetram_app/core/constants/app_strings.dart';
import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'service_item.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: EdgeInsets.symmetric(horizontal: 13,vertical: 6),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.services,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                AppStrings.seeAll,
                style: TextStyle(color: AppColors.primaryDark, fontSize: 14),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ServiceItem(
                icon: 'assets/icons/wallet.svg',
                label: AppStrings.deposit,
                onTap: () {},
              ),
              ServiceItem(
                icon: 'assets/icons/withdraw.svg',
                label: AppStrings.withdraw,
                onTap: () {},
              ),
              ServiceItem(
                icon: 'assets/icons/transfer.svg',
                label: AppStrings.transfer,
                onTap: () {},
              ),
              ServiceItem(
                icon: 'assets/icons/history.svg',
                label: AppStrings.history,
                onTap: () {},
              ),
            ],
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
