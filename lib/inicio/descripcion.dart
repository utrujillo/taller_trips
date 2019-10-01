import 'package:flutter/material.dart';

class Descripcion extends StatelessWidget{

  String descripcionTxt = "";
  double tamanioTxt = 0;
  int colorTxt = 0;

  // Creación del constructor
  Descripcion(this.descripcionTxt, this.tamanioTxt, this.colorTxt);

  @override
  Widget build(BuildContext context){
    final textoDescripcion = Container(
      margin: EdgeInsets.only( //EdgeInsets ayudan a agregar margenes
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        descripcionTxt,
        style: TextStyle(
          fontSize: tamanioTxt,
          fontWeight: FontWeight.w400,
          color: Color(colorTxt)
        ),
        textAlign: TextAlign.justify,
      )

    );
    return textoDescripcion;
  }
}