import 'package:flutter/material.dart';

class Descripcion extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final textoDescripcion = Container(
      margin: EdgeInsets.only( //EdgeInsets ayudan a agregar margenes
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400
        ),
        textAlign: TextAlign.justify,
      )

    );
    return textoDescripcion;
  }
}