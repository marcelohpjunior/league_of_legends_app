import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../colors.dart';

class CharacterAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CharacterAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: LolColors.white,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      elevation: 0,
      backgroundColor: LolColors.white,
      centerTitle: true,
      title: Image.asset(
        'assets/icons/marvel.svg',
        color: LolColors.blue,
      ),
      leading: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onTap: () {
          print("MENU");
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Image.asset(
            'assets/icons/menu.svg',
            color: LolColors.blueDark,
          ),
        ),
      ),
      actions: [
        InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          onTap: () {
            print("SEARCH");
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Image.asset(
              'assets/icons/search.svg',
              color: LolColors.blueDark,
            ),
          ),
        ),
      ],
    );
  }
}
