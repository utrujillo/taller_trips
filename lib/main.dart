import 'package:flutter/material.dart';
import 'retos/reto1.dart';
import 'inicio/autor.dart';
import 'inicio/descripcion.dart';
import 'inicio/resenhaList.dart';

void main() => runApp(MyApp());
// void main() => runApp(Reto1());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Taller Cytiis 2019')
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            // new Autor("Juan Penas", 3.5),
            // new Descripcion(
            //   "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            //   14.0,
            //   0xFF727272),
            new ResenhaList()
          ]
        )
      ),
    );
  }
}
