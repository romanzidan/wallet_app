import 'package:flutter/material.dart';
import 'package:wallet_app/shared/theme.dart';

class HomeLatestTransactionItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String amount;
  const HomeLatestTransactionItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 48,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  subTitle,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          Text(
            amount,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
