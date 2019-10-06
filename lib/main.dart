import 'package:flutter/material.dart';
import 'retos/reto1.dart';
import 'inicio/autor.dart';
import 'inicio/descripcion.dart';
import 'inicio/resenhaList.dart';
import 'inicio/gradienteEncabezado.dart';
import 'inicio/imagenCard.dart';

void main() => runApp(MyApp());
// void main() => runApp(Reto1());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Autor("Juan Penas", 3.5),
                Descripcion(
                  "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  14.0,
                  0xFF727272),
                ResenhaList()
              ],
            ),
            GradienteEncabezado("Taller Ciitys 2019"),
            ImagenCard("assets/images/sea01.jpeg")
          ],
        )
      ),
    );
  }
}
