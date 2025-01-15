import 'package:flutter/material.dart';
import 'package:oalet/features/home/presentation/home_screen.dart';
import 'package:oalet/features/landing/presentation/widgets/custom_nav_bar.dart';
import 'package:oalet/features/portfolio/presentation/portfolio_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: PageView(
              children: [
                const HomeScreen(),
                Container(),
                const PortfolioScreen(),
                Container(),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: CustomBottomNavBar(),
            ),
          )
        ],
      ),
    );
  }
}
