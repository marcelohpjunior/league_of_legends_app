import 'package:flutter/material.dart';
import '../colors.dart';

import 'circular_svg_widget.dart';

class Filter extends StatelessWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircularSvg(
            pathSvg: 'assets/icons/hero.svg',
            height: 50,
            width: 50,
            backgroundGradient: LolColors.gradientBlue,
            onTap: () => print("HERO"),
          ),
          CircularSvg(
            pathSvg: 'assets/icons/villain.svg',
            height: 50,
            width: 50,
            backgroundGradient: LolColors.gradientRed,
            onTap: () => print("VILLAIN"),
          ),
          CircularSvg(
            pathSvg: 'assets/icons/antihero.svg',
            height: 50,
            width: 50,
            backgroundGradient: LolColors.gradientPurple,
            onTap: () => print("ANTIHERO"),
          ),
          CircularSvg(
            pathSvg: 'assets/icons/alien.svg',
            height: 50,
            width: 50,
            backgroundGradient: LolColors.gradientGreen,
            onTap: () => print("ALIEN"),
          ),
          CircularSvg(
            pathSvg: 'assets/icons/human.svg',
            height: 50,
            width: 50,
            backgroundGradient: LolColors.gradientPink,
            onTap: () => print("HUMAN"),
          ),
        ],
      ),
    );
  }
}
