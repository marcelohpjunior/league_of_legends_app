import 'package:flutter/material.dart';

import 'character_movie_card_widget.dart';

class CharacterMovieList extends StatelessWidget {
  final List<String> movies;
  final double height;

  const CharacterMovieList({
    Key? key,
    required this.movies,
    this.height = 240,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return CharacterMovieCard(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              scrImage: movies[index]);
        },
      ),
    );
  }
}
