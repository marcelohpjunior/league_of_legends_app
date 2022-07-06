import 'package:flutter/material.dart';

import 'character_caracteristic_item_widget.dart';

class CharacterCaracteristics extends StatelessWidget {
  const CharacterCaracteristics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CharacterCaracteristicItem(
            assetIcon: 'assets/icons/age.svg',
            text: '${10} anos',
          ),
          CharacterCaracteristicItem(
            assetIcon: 'assets/icons/weight.svg',
            text: '${10}',
          ),
          CharacterCaracteristicItem(
            assetIcon: 'assets/icons/height.svg',
            text: '${10}',
          ),
          CharacterCaracteristicItem(
            assetIcon: 'assets/icons/universe.svg',
            text: '${10}',
          ),
        ],
      ),
    );
  }
}
