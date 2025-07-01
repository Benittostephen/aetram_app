import 'package:aetram_app/core/common_widgets/gradient_border_container.dart';
import 'package:aetram_app/core/common_widgets/gradient_text.dart';
import 'package:aetram_app/core/constants/app_strings.dart';
import 'package:aetram_app/core/constants/app_text_style.dart';
import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:aetram_app/features/home/widgets/account_header.dart';
import 'package:aetram_app/features/home/widgets/custom_button.dart';
import 'package:aetram_app/features/home/widgets/live_demo_toggle.dart';
import 'package:aetram_app/features/home/widgets/services_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Image.asset(
                      width: double.maxFinite,
                      'assets/images/overlay.jpg', // Your overlay image
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                // Overlay image on entire section
                Positioned.fill(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            // Row for left and right buttons
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/menu.svg',
                                  height: 30,
                                  colorFilter: ColorFilter.mode(
                                    AppColors.golden,
                                    BlendMode.srcIn,
                                  ),
                                ),
                                //profile and verification mark
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0,
                                      ),
                                      child: GradientBorderContainer(
                                        widget: SvgPicture.asset(
                                          'assets/icons/person.svg',
                                          height: 17,
                                          colorFilter: ColorFilter.mode(
                                            AppColors.white,
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                        backgroundColor: Colors.black87,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 2,
                                      right: 0,
                                      child: SvgPicture.asset(
                                        'assets/icons/verification_mark.svg',
                                        height: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // Centered Title
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/aetram_log.png',
                                  height: 55,
                                ),
                                GradientText(
                                  text: 'AETRAM',
                                  textStyle: AppTextStyles.heading,
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 10),
                        AccountHeader(
                          userName: 'Dhanna',
                          accountId: 'LND-USD-000354',
                          balance: '67,908.86',
                        ),
                        SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ServicesSection(),
                  SizedBox(height: 24),
                  Text(
                    AppStrings.account,
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 16),
                  SlidingSegmentScreen(),
                  SizedBox(height: 24),
                  CustomButton(
                    text: AppStrings.createAccount,
                    onPressed: () {},
                    isFullWidth: true,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
