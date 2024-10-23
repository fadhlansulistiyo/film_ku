import 'package:film_ku/model/movies_data.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;
  const DetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: constraints.maxWidth > 800
                  ? DetailWebPage(movie: movie)
                  : DetailMobilePage(movie: movie),
            ),
          ),
        );
      },
    );
  }
}

// Mobile Layout for Detail Screen
class DetailMobilePage extends StatelessWidget {
  final Movie movie;
  const DetailMobilePage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: [
            Backdrop(movie: movie),
            const Positioned(
              top: 16,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtonWidget(),
                  WatchlistButton(),
                ],
              ),
            ),
          ],
        ),
        Header(movie: movie),
        const TitleSection(),
        MovieDescription(movie: movie),
      ],
    );
  }
}

class Header extends StatelessWidget {
  final Movie movie;
  const Header({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildPoster(),
        _buildMovieInfo(),
      ],
    );
  }

  Widget _buildPoster() {
    return Expanded(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          child: Image.asset(
            movie.poster,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }

  Widget _buildMovieInfo() {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildMovieTitle(),
          const SizedBox(height: 16.0),
          _buildMovieReleaseDate(),
          const SizedBox(height: 8.0),
          _buildMovieRuntime(),
          const SizedBox(height: 8.0),
          _buildMovieRating(),
        ],
      ),
    );
  }

  Widget _buildMovieTitle() {
    return Text(
      movie.title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
    );
  }

  Widget _buildMovieReleaseDate() {
    return Row(
      children: [
        const Icon(Icons.date_range, size: 16.0),
        const SizedBox(width: 8.0),
        Text(
          movie.releaseDate,
          style: const TextStyle(fontSize: 14.0),
        ),
      ],
    );
  }

  Widget _buildMovieRuntime() {
    return Row(
      children: [
        const Icon(Icons.access_time, size: 16.0),
        const SizedBox(width: 8.0),
        Text(
          movie.runtime,
          style: const TextStyle(fontSize: 14.0),
        ),
      ],
    );
  }

  Widget _buildMovieRating() {
    return Row(
      children: [
        const Icon(Icons.star, size: 16.0),
        const SizedBox(width: 8.0),
        Text(
          movie.rating.toString(),
          style: const TextStyle(fontSize: 14.0),
        ),
      ],
    );
  }
}

class Backdrop extends StatelessWidget {
  final Movie movie;
  const Backdrop({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 400,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(16.0),
        ),
        child: Image.asset(
          movie.backdrop,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class MovieDescription extends StatelessWidget {
  final Movie movie;
  const MovieDescription({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        movie.description,
        style: const TextStyle(fontSize: 14.0),
      ),
    );
  }
}

class WatchlistButton extends StatefulWidget {
  const WatchlistButton({super.key});

  @override
  WatchlistButtonState createState() => WatchlistButtonState();
}

class WatchlistButtonState extends State<WatchlistButton> {
  bool isWatchlist = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: IconButton(
        icon: Icon(
          isWatchlist ? Icons.bookmark : Icons.bookmark_add_outlined,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            isWatchlist = !isWatchlist;
          });
        },
      ),
    );
  }
}

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

// Web Layout for Detail Screen
class DetailWebPage extends StatelessWidget {
  final Movie movie;
  const DetailWebPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Backdrop(movie: movie),
              Positioned(
                top: 16,
                left: 16,
                right: 16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildBackButton(context),
                    const WatchlistButton(),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1080),
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: _buildPoster(movie),
                      ),
                      const SizedBox(width: 32),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildMovieTitle(movie),
                            const SizedBox(height: 16.0),
                            _buildMovieInfo(movie),
                            const SizedBox(height: 32.0),
                            const TitleSection(),
                            _buildMovieDescription(movie),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _buildPoster(Movie movie) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        child: AspectRatio(
          aspectRatio: 2 / 3,
          child: Image.asset(
            movie.poster,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Widget _buildMovieTitle(Movie movie) {
    return Text(
      movie.title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
    );
  }

  Widget _buildMovieInfo(Movie movie) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildMovieReleaseDate(movie),
        const SizedBox(height: 8.0),
        _buildMovieRuntime(movie),
        const SizedBox(height: 8.0),
        _buildMovieRating(movie),
      ],
    );
  }

  Widget _buildMovieReleaseDate(Movie movie) {
    return Row(
      children: [
        const Icon(Icons.date_range, size: 16.0),
        const SizedBox(width: 8.0),
        Text(
          movie.releaseDate,
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }

  Widget _buildMovieRuntime(Movie movie) {
    return Row(
      children: [
        const Icon(Icons.access_time, size: 16.0),
        const SizedBox(width: 8.0),
        Text(
          movie.runtime,
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }

  Widget _buildMovieRating(Movie movie) {
    return Row(
      children: [
        const Icon(Icons.star, size: 16.0),
        const SizedBox(width: 8.0),
        Text(
          movie.rating.toString(),
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }

  Widget _buildMovieDescription(Movie movie) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        movie.description,
        style: const TextStyle(fontSize: 16.0),
      ),
    );
  }
}