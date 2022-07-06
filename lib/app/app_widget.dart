import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:league_of_legends_app/app/shared/colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'League of Legends',
      theme: ThemeData(
        primarySwatch: LolColors.materialBlue,
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: LolColors.blue,
            onPrimary: LolColors.blue,
            secondary: LolColors.blueLight,
            onSecondary: LolColors.white,
            error: LolColors.red,
            onError: LolColors.white,
            background: LolColors.white,
            onBackground: LolColors.white,
            surface: LolColors.white,
            onSurface: LolColors.white),
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}
