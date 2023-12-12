import 'package:flutter/material.dart';
import 'package:wallet_app/shared/theme.dart';
import 'package:wallet_app/ui/widgets/home_latest_transaction_item.dart';
import 'package:wallet_app/ui/widgets/home_service_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          // Profile
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'romanzidane',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/img_profile.png'),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          // WalletCard
          Container(
            height: 220,
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 30,
            ),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img_bg_card.png'),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Roman Zidane',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Text(
                  '**** **** **** 1234',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                    letterSpacing: 6,
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Text(
                  'Balance',
                  style: whiteTextStyle,
                ),
                Text(
                  'Rp 12.600',
                  style: whiteTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
          // Level
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Level 1',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '55%',
                      style: greenTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'of Rp 20.000',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(55),
                  child: LinearProgressIndicator(
                    value: 0.55,
                    minHeight: 5,
                    valueColor: AlwaysStoppedAnimation(greenColor),
                    backgroundColor: lightBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
          // Services
          Container(
            margin: const EdgeInsets.only(
              top: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Do Something',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeServiceItem(
                      title: 'Top Up',
                      iconUrl: 'assets/ic_topup.png',
                    ),
                    HomeServiceItem(
                      title: 'Send',
                      iconUrl: 'assets/ic_send.png',
                    ),
                    HomeServiceItem(
                      title: 'Withdraw',
                      iconUrl: 'assets/ic_withdraw.png',
                    ),
                    HomeServiceItem(
                      title: 'More',
                      iconUrl: 'assets/ic_more.png',
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Latest Transactions
          Container(
            margin: const EdgeInsets.only(
              top: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Latest Transactions',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(22),
                  margin: const EdgeInsets.only(
                    top: 14,
                  ),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    children: [
                      HomeLatestTransactionItem(
                        imageUrl: 'assets/ic_transaction_cat1.png',
                        title: 'Top Up',
                        subTitle: 'Yesterday',
                        amount: '+ 450.000',
                      ),
                      HomeLatestTransactionItem(
                        imageUrl: 'assets/ic_transaction_cat2.png',
                        title: 'Cashback',
                        subTitle: 'Sep 11',
                        amount: '+ 22.000',
                      ),
                      HomeLatestTransactionItem(
                        imageUrl: 'assets/ic_transaction_cat3.png',
                        title: 'Withdraw',
                        subTitle: 'Sep 2',
                        amount: '- 5.000',
                      ),
                      HomeLatestTransactionItem(
                        imageUrl: 'assets/ic_transaction_cat4.png',
                        title: 'Transfer',
                        subTitle: 'Aug 27',
                        amount: '- 123.500',
                      ),
                      HomeLatestTransactionItem(
                        imageUrl: 'assets/ic_transaction_cat5.png',
                        title: 'Electric',
                        subTitle: 'Feb 18',
                        amount: '- 12.300.000',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
