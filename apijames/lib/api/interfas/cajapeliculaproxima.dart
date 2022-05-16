import 'package:flutter/material.dart';
import 'package:apijames/api/movie.dart';
import 'package:apijames/api/interfas/peliculaproxima.dart';

class CajaPeliculaprox extends StatelessWidget {
  Movie peli;

  CajaPeliculaprox({required this.peli});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.peli.title),
      subtitle: Text(this.peli.voteAverage.toString() +
          " (" +
          this.peli.voteCount.toString() +
          ")"),
      trailing: Image.network(this.peli.getImage()),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Peliculaproxima(movie: this.peli)));
      },
    );
  }
}
