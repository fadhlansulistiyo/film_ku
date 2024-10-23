import 'package:film_ku/home/movie_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filmku'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const MovieList(gridCount: 2);
          } else if (constraints.maxWidth <= 1200) {
            return const MovieList(gridCount: 4);
          } else {
            return const MovieList(gridCount: 6);
          }
        },
      ),
    );
  }
}
