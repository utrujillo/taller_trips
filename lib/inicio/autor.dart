import 'package:flutter/material.dart';
import 'package:taller_trips/compartidos/estrellas.dart';

// Los nombres de las clases siempre utilizan notacion camello
// ej. DescripcionAutor, Autor
class Autor extends StatelessWidget {
  String nombreAutor = "";
  double noEstrellas = 3.5;

  // Constructor
  Autor(this.nombreAutor, this.noEstrellas);

  // El metodo build construye el Widget
  @override
  Widget build(BuildContext context){
    // El Row es el Widget y dentro de ese Widget se anexaran los hijos,
    // por cada hijo es necesario agregar un children, en este caso se haran 2
    // El autor + las estrellas
    final autor = Row(
      children: <Widget> [
        Container(
          margin: EdgeInsets.only( //EdgeInsets ayudan a agregar margenes
            top: 260.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            nombreAutor,
            style: TextStyle( //Para dar estilo personalizado al texto
              fontFamily: "Dosis",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          )
        ),

        Container(
          margin: EdgeInsets.only( //EdgeInsets ayudan a agregar margenes
            top: 260.0,
            left: 0.0,
            right: 0.0
          ),
          child: Estrellas( this.noEstrellas, 25.0, 0, 3.0 ),
        )

      ]
    );
    return autor;
  }
}
