import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/movie.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailsScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.fill,
            child: Hero(
              tag: movie.displayTitle,
              child: FadeInImage.assetNetwork(
                  placeholder: 'assets/placeholder.png',
                  image: movie.multimedia.src),
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    movie.displayTitle,
                    style:
                        const TextStyle(fontSize: 24, color: Colors.tealAccent),
                  ),
                  Text("By ${movie.author}"),
                  const Divider(height: 32),
                  Text(movie.headline),
                  buildDivider(),
                  const SizedBox(height: 32),
                  Text(
                    movie.summaryShort,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  const Divider(height: 32),
                  Text(
                    "Release date: ${DateFormat('yMMMd').format(movie.publicationDate)}",
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Expanded(
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          _launchUrl();
                        },
                        behavior: HitTestBehavior.opaque,
                        child: Text(
                          textAlign: TextAlign.center,
                          movie.link.suggestedLinkText,
                          style: const TextStyle(color: Colors.lightBlueAccent),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _launchUrl() async {
    var uri = Uri.parse(movie.link.url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }

  Divider buildDivider() => const Divider(height: 24);
}
