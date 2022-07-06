import 'package:dio/dio.dart';

class DioClient {
  final Dio client;
  static const baseURL = 'https://ddragon.leagueoflegends.com/cdn/';
  static const version = '12.12.1';

  DioClient(this.client) {
    client.options.baseUrl = baseURL + version;
  }
}
