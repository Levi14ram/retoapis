import 'package:apijames/api/interfas/cajapeliculaproxima.dart';
import 'package:apijames/api/moviedbproxima.dart';
import 'package:flutter/material.dart';
import 'package:apijames/api/interfas/cajapelicula.dart';
import 'package:apijames/api/interfas/carga.dart';

void main() {
  runApp(proximas());
}

class proximas extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'worbok',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: pelis(),
    );
  }
}

class pelis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Pelis proximas')),
        body: FutureBuilder(
         
          future: moviedbproxima.getproximadMovies(),
          builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var pelicula = snapshot.data![index];
                  return CajaPeliculaprox(peli: pelicula);
                },
              );
            } else {
              return target();
            }
          },
        ));
  }
}
