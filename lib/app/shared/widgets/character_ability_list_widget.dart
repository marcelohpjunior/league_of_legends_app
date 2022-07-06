import 'package:flutter/material.dart';

import 'character_ability_widget.dart';

class CharacterListAbility extends StatelessWidget {
  final EdgeInsetsGeometry? padding;

  const CharacterListAbility({Key? key, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CharacterAbility(
            abilityTitle: 'Força',
            abilityValue: 10,
          ),
          CharacterAbility(
            abilityTitle: 'Inteligência',
            abilityValue: 10,
          ),
          CharacterAbility(
            abilityTitle: 'Agilidade',
            abilityValue: 10,
          ),
          CharacterAbility(
            abilityTitle: 'Resistência',
            abilityValue: 10,
          ),
          CharacterAbility(
            abilityTitle: 'Velocidade',
            abilityValue: 10,
          )
        ],
      ),
    );
  }
}
