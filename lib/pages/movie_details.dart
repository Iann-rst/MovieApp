import 'package:flutter/material.dart';
import 'package:movieapp/models/movies_model.dart';

import '../utils/api.utils.dart';

class MovieDetails extends StatelessWidget {
  final Movie movie;

  const MovieDetails({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: movie.id,
                  child: Image.network(
                    API.REQUEST_IMG(movie.posterPath),
                    loadingBuilder: (_, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const CircularProgressIndicator.adaptive();
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(movie.overview,
                  style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Icon(Icons.title),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      movie.originalTitle,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(Icons.date_range),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    movie.releaseDate,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
