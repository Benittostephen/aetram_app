import 'package:aetram_app/core/common_widgets/custom_card.dart';
import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:aetram_app/features/home/widgets/account_list_item.dart';
import 'package:flutter/material.dart';

class SlidingSegmentScreen extends StatefulWidget {
  const SlidingSegmentScreen({super.key});

  @override
  State<SlidingSegmentScreen> createState() => _SlidingSegmentScreenState();
}

class _SlidingSegmentScreenState extends State<SlidingSegmentScreen> {
  bool isLive = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Responsive Segment Toggle
        LayoutBuilder(
          builder: (context, constraints) {
            double totalWidth = constraints.maxWidth;
            double buttonWidth = (totalWidth - 8) / 2; // Padding 4 * 2 = 8

            return Container(
              height: 45,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                children: [
                  AnimatedAlign(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    alignment:
                        isLive ? Alignment.centerLeft : Alignment.centerRight,
                    child: Container(
                      width: buttonWidth,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      _buildOption('Live', true),
                      _buildOption('Demo', false),
                    ],
                  ),
                ],
              ),
            );
          },
        ),

        const SizedBox(height: 16),

        // Content Area
        isLive
            ? CustomCard(
              child: Column(
                children: [
                  AccountListItem(
                    accountNumber: '5000510441',
                    accountId: 'MT5-USD-005553113',
                    balance: 18623.90,
                    isActive: true,
                  ),
                  Divider(color: AppColors.lightGrey),
                  AccountListItem(
                    accountNumber: '5000054135',
                    accountId: '0xA13...F6B8',
                    balance: 0.90,
                    isActive: true,
                  ),
                ],
              ),
            )
            : CustomCard(
              child: Column(
                children: [
                  AccountListItem(
                    accountNumber: '5000510123',
                    accountId: 'ST5-USD-005137313',
                    balance: 291623.90,
                    isActive: true,
                  ),
                  Divider(color: AppColors.lightGrey),
                  AccountListItem(
                    accountNumber: '500076135',
                    accountId: '0xA13...F6B8',
                    balance: 50.90,
                    isActive: false,
                  ),
                ],
              ),
            ),
      ],
    );
  }

  Widget buildSegment(String text) => Container(
    padding: EdgeInsets.all(12),
    child: Text(text, style: TextStyle(fontSize: 20)),
  );

  Widget _buildOption(String text, bool isLiveButton) {
    final isSelected = isLiveButton == isLive;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isLive = isLiveButton;
          });
        },
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? AppColors.primaryDark : AppColors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
