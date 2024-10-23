import 'package:flutter/material.dart';
import 'package:film_ku/model/movies_data.dart';
import '../detailscreen/detail_screen.dart';

class MovieList extends StatelessWidget {
  final int gridCount;

  const MovieList({super.key, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 2 / 3.5,
      ),
      padding: const EdgeInsets.all(16.0),
      itemCount: movieList.length,
      itemBuilder: (context, index) {
        final Movie movie = movieList[index];
        return MovieListCard(movie: movie);
      },
    );
  }
}

class MovieListCard extends StatelessWidget {
  final Movie movie;
  const MovieListCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen(movie: movie);
        }));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPoster(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _buildMovieInfo(),
          ),
        ],
      ),
    );
  }

  Widget _buildPoster() {
    return Expanded(
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        child: Image.asset(
          movie.poster,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }

  Widget _buildMovieInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          movie.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
        ),
        Text(
          '${movie.rating.toString()}/10',
          style: const TextStyle(color: Colors.grey, fontSize: 12.0),
        ),
      ],
    );
  }
}
