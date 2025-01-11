import 'package:assignment/colors/color_constants.dart';
import 'package:flutter/material.dart';

class ActivateCardWidget extends StatelessWidget {
  const ActivateCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        margin: const EdgeInsets.all(9.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Activate your LifelineCard',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Column(
                  children: [
                    const Text(
                      '\u20B9 3499/-  Life Time',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: kblue,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      '\u20B9 9999/Year',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    const Text(
                      'Offer Ends Soon!',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kblue,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text('Activate Now')),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
            Image.asset(
              'assets/images/person.png',
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
