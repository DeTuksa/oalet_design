import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:oalet/core/constants/app_assets.dart';
import 'package:oalet/core/router/app_routes.dart';
import 'package:oalet/core/themes/app_themes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: SvgPicture.asset(AppAssets.bigStar),
                  ),
                  SvgPicture.asset(AppAssets.topRight)
                ],
              ),
              const SizedBox(height: 50),
              Center(
                child: SizedBox(
                  width: 320, height: 320,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        AppAssets.oaletSplash
                      ),
                     const  Center(
                        child: Text(
                          "OALET",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                      text: 'Easy ways to manage your finances',
                      style: TextStyle(
                          color: AppTheme.primary.shade600,
                          fontSize: 48,
                          fontWeight: FontWeight.w600
                      ),
                      children: [
                        const WidgetSpan(child: SizedBox(width: 20)),
                        WidgetSpan(
                            child: SvgPicture.asset(
                                AppAssets.smallStar
                            )
                        )
                      ]
                  ),
                ),
              ),
              // const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: FilledButton(
                  onPressed: () => context.pushNamed(AppRoutes.homeScreen),
                  style: FilledButton.styleFrom(
                      backgroundColor: Colors.black
                  ),
                  child: const Padding(
                    padding:  EdgeInsets.symmetric(vertical: 14),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Get Started",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
