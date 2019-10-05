import 'package:flutter/material.dart';
import '../compartidos/estrellas.dart';

class Resenha extends StatelessWidget{
  
  String urlImagen = "";
  String usuario = "";
  String infoPonderacion = "";
  String comentario = "";
  Resenha(this.urlImagen, this.usuario, this.infoPonderacion, this.comentario);

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
          color: Color(0xFF3F4242),
          fontWeight: FontWeight.bold
        )
      )
    );

    final ponderacion = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 0.0,
            left: 20.0,
            right: 5.0
          ),
          child: Text(
            infoPonderacion,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 12.0,
              color: Color(0xFFA3A5A7)
            )
          )
        ),
        Estrellas(4, 12.0, 0.0, 1.0)
      ],
    );

    final comentarioUsuario = Container(
      margin: EdgeInsets.only(
        top: 0.0,
        left: 20.0
      ),
      child: Text(
        comentario,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 12.0,
          color: Color(0xFF3F4242)
        )
      )
    );
    

    final detalleUsuario = Column(
      crossAxisAlignment: CrossAxisAlignment.start, //Esto hara que todo el contenido de la columna se alinee al inicio
      children: <Widget>[
        nombreUsuario,
        ponderacion,
        comentarioUsuario
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