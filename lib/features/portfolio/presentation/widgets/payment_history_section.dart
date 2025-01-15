import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oalet/core/constants/app_assets.dart';
import 'package:oalet/core/extension/context_extension.dart';

class PaymentHistorySection extends StatefulWidget {
  const PaymentHistorySection({super.key});

  @override
  State<PaymentHistorySection> createState() => _PaymentHistorySectionState();
}

class _PaymentHistorySectionState extends State<PaymentHistorySection> {

  List<Map<String, dynamic>> history = [
    {
      'title': 'Salary',
      'date': 'June 28, 2022',
      'amount': '\$526',
      'icon': CupertinoIcons.briefcase_fill,
      'color': const Color(0xFFA7FED9)
    },
    {
      'title': 'Paypal',
      'date': 'June 8, 2022',
      'amount': '\$256',
      'icon': CupertinoIcons.money_pound,
      'color': const Color(0xFFEBB2FF)
    },
    {
      'title': 'Gift',
      'date': 'June 28, 2022',
      'amount': '\$526',
      'icon': CupertinoIcons.gift_fill,
      'color': const Color(0xFFFFEEB2)
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Payments History',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: context.mediaQuery.size.width,
          height: 150,
          child: Center(
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: PaymentHistoryCard(
                    title: history[index]['title'],
                    date: history[index]['date'],
                    amount: history[index]['amount'],
                    icon: history[index]['icon'],
                    color: history[index]['color'],
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}

class PaymentHistoryCard extends StatelessWidget {

  final String title;
  final String date;
  final String amount;
  final IconData icon;
  final Color color;

  const PaymentHistoryCard({
    super.key,
    required this.title,
    required this.date,
    required this.amount,
    required this.icon,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155, height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color
      ),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 30, width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Icon(
                icon,
                size: 16,
              ),
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500,
              color: Color(0xFF131313)
            ),
          ),
          Text(
            date,
            style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.normal,
              color: Color(0xFF131313)
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                amount,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              ),
              SvgPicture.asset(
                AppAssets.arrowUp,
                width: 16, height: 16,
              )
            ],
          )
        ],
      ),
    );
  }
}

