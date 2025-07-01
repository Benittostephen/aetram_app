import 'package:aetram_app/core/common_widgets/gradient_text.dart';
import 'package:aetram_app/core/constants/app_text_style.dart';
import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';

class AccountHeader extends StatelessWidget {
  final String userName;
  final String accountId;
  final String balance;

  const AccountHeader({
    super.key,
    required this.userName,
    required this.accountId,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: GradientText(
            text: 'USD Landing Account',
            textStyle: AppTextStyles.subheading,
          ),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello $userName', style: AppTextStyles.body),
                Text(accountId, style: AppTextStyles.caption),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Balance Amount', style: AppTextStyles.body),
                Text(
                  '\$$balance',
                  style: TextStyle(
                    color: AppColors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
