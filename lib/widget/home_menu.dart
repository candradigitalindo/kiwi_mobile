import 'package:flutter/material.dart';
import 'package:kiwi_mobile/shared/theme.dart';

class HomeMenuItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  const HomeMenuItem(
      {Key? key, required this.iconUrl, required this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whiteColor,
            ),
            child: Center(
              child: Image.asset(
                iconUrl,
                width: 50,
              ),
            ),
          ),
          Text(
            title,
            style: blackTextStayle.copyWith(
              fontWeight: semibold,
              fontSize: 9,
            ),
          ),
        ],
      ),
    );
  }
}
