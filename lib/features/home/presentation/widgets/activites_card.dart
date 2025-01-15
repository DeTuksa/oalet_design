import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oalet/core/extension/context_extension.dart';

class ActivitesCard extends StatelessWidget {

  final String asset;
  final String title;
  final String description;
  final String amount;
  const ActivitesCard({
    super.key,
    required this.asset,
    required this.amount,
    required this.description,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: context.mediaQuery.size.width,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFF5F5F5),
          ),
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 45, width: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: SvgPicture.asset(asset),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                        description,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                amount,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
