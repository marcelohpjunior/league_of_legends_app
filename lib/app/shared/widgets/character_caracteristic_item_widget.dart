import 'package:flutter/material.dart';

import '../colors.dart';

class CharacterCaracteristicItem extends StatelessWidget {
  final String assetIcon;
  final String text;
  const CharacterCaracteristicItem(
      {Key? key, required this.assetIcon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            assetIcon,
            color: LolColors.white,
          ),
          Text(
            text,
            style: const TextStyle(
              color: LolColors.white,
              fontSize: 14,
              fontFamily: 'Gilroy-Medium',
            ),
          ),
        ],
      ),
    );
  }
}
