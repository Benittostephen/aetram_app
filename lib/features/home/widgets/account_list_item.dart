import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountListItem extends StatelessWidget {
  final String accountNumber;
  final String accountId;
  final double balance;
  final bool isActive;

  const AccountListItem({
    super.key,
    required this.accountNumber,
    required this.accountId,
    required this.balance,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.grey.withValues(alpha: 0.1)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.grey.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SvgPicture.asset('assets/icons/trans.svg', height: 25),
              ),
            ),
            // Icon(Icons.link, color: AppColors.grey),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    accountNumber,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    accountId,
                    style: TextStyle(color: AppColors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (isActive) statusBadge(text: 'Active'),
                SizedBox(height: 4),
                Text(
                  '\$${balance.toStringAsFixed(2)}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Icon(Icons.more_vert, color: AppColors.grey),
          ],
        ),
      ),
    );
  }
}

Widget statusBadge({required String text, Color textColor = AppColors.green}) {
  return Text(
    text,
    style: TextStyle(
      color: textColor,
      fontSize: 13,
      fontWeight: FontWeight.bold,
    ),
  );
}
