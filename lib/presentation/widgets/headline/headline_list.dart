import 'package:flutter/material.dart';
import 'package:taboola_news/core/theme/app_theme.dart';
import 'package:taboola_news/presentation/widgets/headline/headline_card.dart';

class HeadlineList extends StatefulWidget {
  const HeadlineList({Key? key}) : super(key: key);
  @override
  State<HeadlineList> createState() => _HeadlineListState();
}

class _HeadlineListState extends State<HeadlineList>
    with SingleTickerProviderStateMixin {
  // PageView
  late PageController _pageController;
  int _selectedHeadline = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 1,
      viewportFraction: 0.88,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final subtitleStyle = AppTextTheme.textTheme.bodyMedium?.copyWith(
      color: AppColors.grey,
      fontWeight: FontWeight.w700,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Text(
            "Top Headlines",
            style: AppTextTheme.textTheme.titleMedium,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 250,
          child: PageView.builder(
            onPageChanged: (pos) {
              setState(() {
                _selectedHeadline = pos;
              });
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return const HeadlineCard();
            },
          ),
        ),
        const SizedBox(height: 8),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                "Presidential election court admits INEC's final results declaring Tinubu president elect",
                overflow: TextOverflow.clip,
                maxLines: 2,
                style: AppTextTheme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    "Premium Times",
                    style: subtitleStyle,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    "•",
                    style: subtitleStyle,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    "5 Hours Ago",
                    style: subtitleStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
