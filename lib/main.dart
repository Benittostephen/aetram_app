import 'package:aetram_app/core/theme/app_theme.dart';
import 'package:aetram_app/features/main_nav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AETRAM',
      theme: AppTheme.darkTheme,
      home: MainNavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
