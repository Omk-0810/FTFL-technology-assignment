import 'package:assignment/common_widgets/wallet_card.dart';
import 'package:flutter/material.dart';

class WalletWidget extends StatelessWidget {
  const WalletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WalletCard(
          title: 'Lifeline Card Wallet',
          subtitle: 'Upcoming EMI/Udhar',
          balance: '4356',
          extra: '4356',
          showButton: true,
        ),
        WalletCard(
          title: 'Lifeline Coin',
          subtitle: 'Lifeline Magic Coin',
          balance: '4356',
          extra: '600',
        ),
        WalletCard(
          title: 'Cashback Coin',
          subtitle: 'Add Credit Coin',
          balance: '4356',
          isRed: true,
        ),
      ],
    );
  }
}
