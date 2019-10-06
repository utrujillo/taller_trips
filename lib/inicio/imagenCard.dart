import 'package:flutter/material.dart';

class ImagenCard extends StatelessWidget{

  String rutaImagen = "";

  ImagenCard(this.rutaImagen);

  @override
  Widget build(BuildContext context){
    final imagen = Container(
      height: 220.0,
      width: 250.0,
      margin: EdgeInsets.only(
        top: 60.0,
        left: 20.0
      ),

      decoration: BoxDecoration(
        image: DecorationImage( //Inserta la imagen dentro de la caja
          fit: BoxFit.cover,
          image: AssetImage(rutaImagen)
        ),
        
        borderRadius: BorderRadius.all(Radius.circular(10.0)), //Agrega el borde
        shape: BoxShape.rectangle, //Agrega una sombra
        boxShadow: <BoxShadow> [ //Establece las propiedades de la sombra
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0) //Posicion del blur en x, y
          )
        ]
      )

    );

    return imagen;
  }
}