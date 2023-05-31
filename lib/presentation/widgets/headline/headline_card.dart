import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HeadlineCard extends StatefulWidget {
  const HeadlineCard({Key? key}) : super(key: key);
  @override
  State<HeadlineCard> createState() => _HeadlineCardState();
}

class _HeadlineCardState extends State<HeadlineCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        elevation: 0,
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl:
                  'https://grandcanyonwest.com/wp-content/uploads/SkwalkHero_B.jpg',
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
