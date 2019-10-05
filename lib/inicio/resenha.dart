import 'package:flutter/material.dart';

class Resenha extends StatelessWidget{
  
  String urlImagen = "assets/images/luffy.jpg";

  Resenha(this.urlImagen);

  @override
  Widget build(BuildContext context){

    final foto = Container(
      margin: EdgeInsets.only( //Los margenes que tendra el contenedor
        top: 20,
        left: 20
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration( // Agrega una decoración al contenedor
        shape: BoxShape.circle, //Encierra el contenedor de forma circular
        image: DecorationImage( // Agregaremos una decoración de imagen
          fit: BoxFit.fill, //Establece la posicion, indicando que rellene todo y ajuste la imagen
          image: AssetImage(urlImagen) //Se inserta la imagen
        )
      ),
    );

    final contenidoResenha = Row(
      children: <Widget>[
        foto
      ],
    );

    return contenidoResenha;
  }
}