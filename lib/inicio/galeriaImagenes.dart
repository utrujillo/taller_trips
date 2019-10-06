import 'package:flutter/material.dart';
import 'imagenCard.dart';

class GaleriaImagenes extends StatelessWidget {
  Widget build(BuildContext context){

    final contenedor = Container(
      height: 330.0,
      child: ListView(
        padding: EdgeInsets.only(
          top: 25.0,
          left: 0.0,
          right: 25.0,
          bottom: 25.0
        ),
        scrollDirection: Axis.horizontal, //Modificamos la direccion del scroll(por default es vertical)
        children: <Widget>[
          ImagenCard("assets/images/sea01.jpeg"),
          ImagenCard("assets/images/sea02.jpg"),
          ImagenCard("assets/images/sea03.jpg"),
          ImagenCard("assets/images/sea04.jpg")
        ],
      )
    );

    return contenedor;
  }
}