import 'package:flutter/material.dart';
import 'package:taboola_news/core/theme/app_theme.dart';

class NewsListItem extends StatefulWidget {
  const NewsListItem({Key? key}) : super(key: key);
  @override
  State<NewsListItem> createState() => _NewsListItemState();
}

class _NewsListItemState extends State<NewsListItem> {
  @override
  Widget build(BuildContext context) {
    final subtitleStyle = AppTextTheme.textTheme.bodyMedium?.copyWith(
      color: AppColors.grey,
      fontWeight: FontWeight.w700,
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "House begins debating debt limit deal, with a potential default looming",
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                  style: AppTextTheme.textTheme.bodyLarge?.copyWith(
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
          const SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "https://c4.wallpaperflare.com/wallpaper/153/879/801/5bd3640533a01-wallpaper-preview.jpg",
              fit: BoxFit.cover,
              height: 82,
              width: 110,
            ),
          ),
        ],
      ),
    );
  }
}
