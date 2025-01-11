import 'package:assignment/common_widgets/activate_card_widget.dart';
import 'package:assignment/common_widgets/feature_widget.dart';
import 'package:assignment/common_widgets/lifelinecart_widget.dart';
import 'package:assignment/common_widgets/limit_card_widget.dart';
import 'package:assignment/common_widgets/wallet_widget.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List<dynamic> productList = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card & Wallets'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const LifelinecartWidget(),
            Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ActivateCardWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Our Features',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LimitCardWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FeatureWidget(
                        icon: Icons.account_balance_wallet,
                        label: 'Udhar',
                      ),
                      FeatureWidget(
                        icon: Icons.payment,
                        label: 'CP EMI',
                      ),
                      FeatureWidget(
                        icon: Icons.business,
                        label: 'Business Funds',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Wallet',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  WalletWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
