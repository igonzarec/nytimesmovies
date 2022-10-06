import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ingenio_challenge/ui/screens/movie_details_screen.dart';

import '../movies_bloc.dart';
import '../movies_state.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: Center(
        child: BlocBuilder<MoviesBloc, MoviesState>(
          builder: (context, state) {
            return state.map(successs: (state) {
              var movies = state.movies;
              if (movies.isNotEmpty) {
                return ListView.separated(
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    final movie = movies[index];

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MovieDetailsScreen(movie: movie)));
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Hero(
                              tag: movie.displayTitle,
                              child: FadeInImage.assetNetwork(
                                  placeholder: 'assets/placeholder.png',
                                  image: movie.multimedia.src),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    movie.displayTitle,
                                    style: const TextStyle(
                                        color: Colors.tealAccent),
                                  ),
                                  Text(movie.author,
                                      style:
                                          const TextStyle(color: Colors.grey)),
                                  Text(movie.headline),
                                ],
                              ),
                            ),
                          )
                          // Image.network(movie.multimedia.src)
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                        height: 1, color: Colors.tealAccent.withOpacity(.2));
                  },
                );
              } else {
                return const Text('No movies');
              }
            }, error: (_) {
              return const Text('Could not load movies');
            }, loading: (_) {
              return const CircularProgressIndicator();
            }, initial: (_) {
              return const SizedBox.shrink();
            });
          },
        ),
      ),
    );
  }
}
