import 'package:flutter/material.dart';

import '../presentation/screens/home.dart';

class TaboolaNews extends StatelessWidget {
  const TaboolaNews({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Taboola News',
      home: HomeScreen(),
    );
  }
}
