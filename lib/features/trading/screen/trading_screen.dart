import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TradingScreen extends StatelessWidget {
  const TradingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Trading Screen')],
        ),
      ),
    );
  }
}
