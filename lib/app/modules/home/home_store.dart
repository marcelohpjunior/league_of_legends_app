import 'package:flutter_triple/flutter_triple.dart';
import 'package:league_of_legends_app/app/repository/interfaces/ichampions_repository.dart';

class HomeStore extends NotifierStore<Exception, int> {
  final IChampionsRepository repository;
  HomeStore(this.repository) : super(0);

  Future<void> increment() async {
    setLoading(true);

    await Future.delayed(const Duration(seconds: 1));
    await repository.getAllChampions();

    int value = state + 1;
    if (value < 5) {
      update(value);
    } else {
      setError(Exception('Error: state not can be > 4'));
    }

    setLoading(false);
  }
}
