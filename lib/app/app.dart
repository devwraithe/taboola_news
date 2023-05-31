import 'package:flutter/material.dart';

import '../core/theme/app_theme.dart';
import '../presentation/screens/home.dart';

class TaboolaNews extends StatelessWidget {
  const TaboolaNews({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taboola News',
      home: const HomeScreen(),
      theme: AppTheme.lightTheme,
    );
  }
}
