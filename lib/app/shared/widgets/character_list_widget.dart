import 'package:flutter/material.dart';
import '../colors.dart';

import 'character_card_widget.dart';

class CharacterList extends StatelessWidget {
  final String titleList;
  final dynamic characters;
  final void Function(int index)? onTap;
  final void Function()? onTapSeeMore;

  const CharacterList(
      {Key? key,
      required this.titleList,
      required this.characters,
      this.onTap,
      this.onTapSeeMore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 50, bottom: 10),
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  titleList,
                  style: const TextStyle(
                    fontFamily: 'Gilroy',
                    color: LolColors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                InkWell(
                  onTap: onTapSeeMore,
                  child: SizedBox(
                    height: 30,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Ver tudo",
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            color: LolColors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 240,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: characters.length,
            itemBuilder: (context, index) {
              return CharacterCard(
                heroName: characters[index].name ?? '',
                realName: characters[index].alterEgo ?? '',
                scrImage: characters[index].imagePath ?? '',
                margin: const EdgeInsets.symmetric(horizontal: 5),
                onTap: () {
                  onTap!(index);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
