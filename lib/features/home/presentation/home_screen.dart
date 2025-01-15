import 'package:flutter/material.dart';
import 'package:oalet/core/constants/app_assets.dart';
import 'package:oalet/core/extension/context_extension.dart';
import 'package:oalet/features/home/presentation/widgets/action_icon.dart';
import 'package:oalet/features/home/presentation/widgets/custom_card.dart';
import 'package:oalet/features/home/presentation/widgets/custom_nav_bar.dart';
import 'package:oalet/features/home/presentation/widgets/profile_bar.dart';
import 'package:oalet/features/home/presentation/widgets/sent_to_section.dart';

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
                    const SizedBox(height: 24),
                    const CustomCard(),
                    // const SizedBox(height: 16),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ActionIcon(
                            asset: AppAssets.send,
                            color: Color(0xFFEBB2FF),
                            title: 'Send',
                          ),
                          ActionIcon(
                            asset: AppAssets.request,
                            color: Color(0xFFA7FED9),
                            title: 'Request',
                          ),
                          ActionIcon(
                            asset: AppAssets.eWallet,
                            color: Color(0xFFA7F4FE),
                            title: 'E-Wallet',
                          ),
                          ActionIcon(
                            asset: AppAssets.more,
                            color: Color(0xFFFECCA7),
                            title: 'More',
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    const SentToSection(),
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
