import 'package:flutter/material.dart';
import '../colors.dart';

class CharacterBiography extends StatelessWidget {
  final String biography;
  const CharacterBiography({Key? key, required this.biography})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          biography,
          style: const TextStyle(
            fontFamily: 'Gilroy-Medium',
            color: LolColors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
