import 'package:flutter/material.dart';
import 'package:oalet/core/extension/context_extension.dart';
import 'package:oalet/features/home/presentation/widgets/custom_nav_bar.dart';
import 'package:oalet/features/home/presentation/widgets/profile_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: SizedBox(
              height: context.mediaQuery.size.height,
              width: context.mediaQuery.size.width,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    const ProfileBar(),
                    Container()
                  ],
                ),
              ),
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
