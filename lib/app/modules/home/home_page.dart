import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:league_of_legends_app/app/shared/colors.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final store = context.watch<HomeStore>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: LolColors.blueDark,
        title: const Text('Counter'),
      ),
      body: Center(
        child: ScopedBuilder<HomeStore, Exception, int>(
          store: store,
          onLoading: (_) => const CircularProgressIndicator(),
          onState: (_, counter) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Text('$counter'),
            );
          },
          onError: (context, error) => const Center(
            child: Text(
              'Too many clicks',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
