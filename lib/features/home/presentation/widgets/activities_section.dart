import 'package:flutter/material.dart';
import 'package:oalet/core/constants/app_assets.dart';
import 'package:oalet/features/home/presentation/widgets/activites_card.dart';

class ActivitiesSection extends StatelessWidget {
  const ActivitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Activities',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600
              ),
            ),
            Container(
              height: 30, width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFF5F5F5)
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 16,
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 24),
        const ActivitesCard(
          asset: AppAssets.udemy,
          amount: '-\$165.00',
          title: 'Udemy',
          description: 'Subscription',
        ),
        const ActivitesCard(
          asset: AppAssets.amazon,
          amount: '-\$108.00',
          title: 'Amazon',
          description: 'Payment',
        ),      ],
    );
  }
}
