import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oalet/core/constants/app_assets.dart';

class ProfileBar extends StatefulWidget {
  const ProfileBar({super.key});

  @override
  State<ProfileBar> createState() => _ProfileBarState();
}

class _ProfileBarState extends State<ProfileBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 50, width: 50,
              child: Image.asset(
                AppAssets.profileImage
              ),
            ),
            const SizedBox(width: 16),
            const SizedBox(
              // height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello James,',
                    style: TextStyle(fontSize: 16, color: Color(0xFF333333)),
                  ),
                  Text(
                    'Welcome back',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        SvgPicture.asset(
          AppAssets.notification,
          height: 20, width: 20,
        )
      ],
    );
  }
}
