import 'package:flutter/material.dart';
import 'package:apijames/api/movie.dart';

class Peliculaproxima extends StatelessWidget {
  Movie movie;

  Peliculaproxima({required this.movie}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.movie.title),
        ),
        body: ListView(
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Image.network(this.movie.getImage()),
            Text(this.movie.overview),
            SizedBox(
              height: 12,
            ),
            Text('La fecha de extrenos es: ' + this.movie.releaseDate),
          ],
        ));
  }
}
