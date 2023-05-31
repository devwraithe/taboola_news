import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:taboola_news/core/theme/app_theme.dart';
import 'package:taboola_news/presentation/widgets/headline/headline_list.dart';
import 'package:taboola_news/presentation/widgets/news_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 18),
        child: AppBar(
          title: Container(
            margin: const EdgeInsets.only(top: 26, left: 4),
            child: Text(
              "Taboola News",
              style: AppTextTheme.textTheme.titleMedium,
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(top: 28, right: 18),
              child: const HeroIcon(
                HeroIcons.globeAlt,
                color: AppColors.black,
                size: 26,
              ),
            ),
          ],
          backgroundColor: AppColors.white,
          centerTitle: false,
          // elevation: 0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadlineList(),
            const SizedBox(height: 34),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(
                "General News",
                style: AppTextTheme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 18),
            const NewsListItem(),
          ],
        ),
      ),
    );
  }
}
