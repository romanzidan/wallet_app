import 'package:flutter/material.dart';
import 'package:wallet_app/shared/theme.dart';

class HomeUserItem extends StatelessWidget {
  final String profilePicturUrl;
  final String username;
  const HomeUserItem(
      {super.key, required this.profilePicturUrl, required this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 120,
      margin: const EdgeInsets.only(
        right: 17,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 2,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(
              bottom: 13,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(profilePicturUrl),
              ),
            ),
          ),
          Text(
            username,
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
