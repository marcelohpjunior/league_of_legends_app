import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:league_of_legends_app/app/repository/champions_repository.dart';
import 'package:league_of_legends_app/app/repository/dio_client.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => Dio()),
    Bind.singleton((i) => DioClient(Modular.get<Dio>())),
    Bind.singleton((i) => ChampionsRepository(Modular.get<DioClient>()))
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}
