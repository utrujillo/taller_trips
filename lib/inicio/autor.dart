import 'package:flutter/material.dart';

// Los nombres de las clases siempre utilizan notacion camello
// ej. DescripcionAutor, Autor
class Autor extends StatelessWidget {
  // El metodo build construye el Widget
  @override
  Widget build(BuildContext context){

    final estrella = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611)
      )
    );
    // El Row es el Widget y dentro de ese Widget se anexaran los hijos,
    // por cada hijo es necesario agregar un children, en este caso se haran 2
    // El autor + las estrellas
    final autor = Row(
      children: <Widget> [
        Container(
          margin: EdgeInsets.only( //EdgeInsets ayudan a agregar margenes
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            'John Wick',
            style: TextStyle( //Para dar estilo personalizado al texto
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          )
        ),

        Row(
          children: <Widget> [
            estrella,
            estrella,
            estrella,
            estrella,
            estrella
          ]
        )

      ]
    );
    return autor;
  }
}
