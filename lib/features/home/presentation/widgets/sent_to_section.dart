import 'package:flutter/material.dart';
import 'package:oalet/core/constants/app_assets.dart';

class SentToSection extends StatelessWidget {
  const SentToSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sent to',
              style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500
              ),
            ),
            Row(
              children: [
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.normal
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 14,
                )
              ],
            )
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SentToIcon(asset: AppAssets.heya, title: 'Heya'),
            SentToIcon(asset: AppAssets.michel, title: 'Michel'),
            SentToIcon(asset: AppAssets.keya, title: 'Keya'),
            SentToIcon(asset: AppAssets.maria, title: 'Maria'),
          ],
        )
      ],
    );
  }
}

class SentToIcon extends StatelessWidget {

  final String asset;
  final String title;

  const SentToIcon({
    super.key,
    required this.asset, required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90, width: 66,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFF5F5F5)
      ),
      padding: const EdgeInsets.all(6.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 50, height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
                child: Image.asset(asset)
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.normal
            ),
          )
        ],
      ),
    );
  }
}
