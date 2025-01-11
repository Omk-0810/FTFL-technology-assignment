import 'package:assignment/colors/color_constants.dart';
import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String balance;
  final String? extra;
  final bool isRed;
  final bool showButton;

  const WalletCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.balance,
    this.extra,
    this.isRed = false,
    this.showButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey.shade200,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/card_profile.png'),
              Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: isRed ? Colors.red : Colors.grey,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    balance,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (extra != null)
                    Text(
                      extra!,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              showButton
                  ? TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Withdraw',
                        style: TextStyle(color: kblue),
                      ),
                    )
                  : const Text(
                      '11th sep 2023 To 11 oct 2023',
                      style: TextStyle(color: Colors.grey),
                    ),
              if (showButton)
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Transfer',
                    style: TextStyle(color: kblue),
                  ),
                ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'More',
                  style: TextStyle(color: kblue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
