import 'package:flutter/material.dart';
import 'package:oalet/core/extension/context_extension.dart';
import 'package:oalet/features/portfolio/presentation/widgets/chart_section.dart';
import 'package:oalet/features/portfolio/presentation/widgets/payment_history_section.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {

  TabBar get _tabBar => TabBar(
    tabs: [
      SizedBox(
        width: context.mediaQuery.size.width / 2 - 50,
        child: const Tab(
          text: "Income",
        ),
      ),
      SizedBox(
        width: context.mediaQuery.size.width / 2 - 50,
        child: const Tab(
          text: "Expenses",
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          title: const Text(
            'Income History',
            style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(40),
              child: SizedBox(
                width: context.mediaQuery.size.width - 40,
                child: Center(
                  child: TabBar(
                    isScrollable: true,
                    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.black),
                        color: Colors.black),
                    splashBorderRadius: BorderRadius.circular(40),
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: const Color(0xFF333333)),
                    labelColor: Colors.white,
                    dividerColor: Colors.transparent,
                    tabAlignment: TabAlignment.start,
                    physics: const BouncingScrollPhysics(),
                    tabs: _tabBar.tabs,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
          child: Column(
            children: [
              // const SizedBox(height: 24),
              const Center(
                child: Text(
                  'Save This Month',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.normal
                  ),
                ),
              ),
              const SizedBox(height: 6),
              const Center(
                child: Text(
                  '\$1852.00 USD',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Center(
                child: RichText(
                  text: const TextSpan(
                    text: 'Increase of ',
                    style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.normal,
                      color: Colors.black
                    ),
                    children: [
                      TextSpan(
                        text: '12% ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      TextSpan(
                        text: 'from last month'
                      )
                    ]
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const ChartSection(),
              const SizedBox(height: 24),
              const PaymentHistorySection()
            ],
          ),
        ),
      ),
    );
  }
}
