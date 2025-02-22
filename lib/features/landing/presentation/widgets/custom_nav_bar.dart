import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oalet/core/constants/app_assets.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {

  List<String> assets = [
    AppAssets.home,
    AppAssets.walletInactive,
    AppAssets.scanActive,
    AppAssets.chartInactive,
    AppAssets.userInactive
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Color(0xFFCCCCCC),
                blurRadius: 20
            )
          ]
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (String asset in assets)
            Container(
              height: 40, width: 55,
              decoration: asset == assets[2] ? BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFFF5F5F5)
              ) : null,
              child: Center(
                child: SvgPicture.asset(asset),
              ),
            ),
          // SvgPicture.asset(asset)
        ],
      ),
    );
  }
}
