import 'package:league_of_legends_app/app/repository/dio_client.dart';
import 'package:league_of_legends_app/app/repository/interfaces/ichampions_repository.dart';

class ChampionsRepository implements IChampionsRepository {
  final DioClient dio;

  ChampionsRepository(this.dio);

  @override
  Future<void> getAllChampions() async {
    var response = await dio.client.get('/data/pt_BR/champion.json');
    print(response.data['data']['Jax']);
  }
}
