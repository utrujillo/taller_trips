import 'package:flutter/material.dart';

class Resenha extends StatelessWidget{
  
  String urlImagen = "";
  String usuario = "";

  Resenha(this.urlImagen, this.usuario);

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

    final nombreUsuario = Container(
      margin: EdgeInsets.only(
        top: 0.0,
        left: 20.0
      ),
      child: Text(
        usuario,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          color: Color(0xFF3F4242)
        )
      )
    );

    final detalleUsuario = Column(
      crossAxisAlignment: CrossAxisAlignment.start, //Esto hara que todo el contenido de la columna se alinee al inicio
      children: <Widget>[
        nombreUsuario
      ],
    );

    final contenidoResenha = Row(
      children: <Widget>[
        foto,
        detalleUsuario
      ],
    );

    return contenidoResenha;
  }
}