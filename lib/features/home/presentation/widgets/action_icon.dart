import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActionIcon extends StatelessWidget {

  final String asset;
  final String title;
  final Color color;
  const ActionIcon({
    super.key, required this.asset,
    required this.color, required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56, width: 56,
          decoration: BoxDecoration(
            color: const Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: Container(
              width: 40, height: 40,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20)
              ),
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(asset),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF666666)
          ),
        )
      ],
    );
  }
}
