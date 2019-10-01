import 'package:flutter/material.dart';

class Estrellas extends StatelessWidget{
  double noEstrellas = 0, tamanio = 0, mrigth = 0, mtop = 0;

  // Constructor
  Estrellas(this.noEstrellas, this.tamanio, this.mtop, this.mrigth);

  @override
  Widget build(BuildContext context){

    final List<Widget> totalEstrellas = [];
    final int estrellasCompletas = (noEstrellas).floor(); //Obtenemos las estrellas completas
    final bool mitadEstrella = noEstrellas%1 != 0 ? true : false; //Verificamos si es estrela y media o asi
    final int estrellasMaximas = 5;
    
    // Tipos de estrellas
    final estrella = Container(
      margin: EdgeInsets.only(
        top: mtop,
        right: mrigth
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: tamanio
      )
    );

    final estrellaMedia = Container(
      margin: EdgeInsets.only(
        top: mtop,
        right: mrigth
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        size: tamanio
      )
    );

    final estrellaVacia = Container(
      margin: EdgeInsets.only(
        top: mtop,
        right: mrigth
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        size: tamanio
      )
    );

    // Asignando valores a estrellas
    for(int i=0; i < estrellasCompletas ; i++){
      totalEstrellas.add(estrella);
    }

    if( mitadEstrella )
      totalEstrellas.add(estrellaMedia);
    
    for( int i = (noEstrellas).round(); i < estrellasMaximas; i++ ){
      totalEstrellas.add(estrellaVacia);
    }

    final estrellasAsignadas = Row(
      children: totalEstrellas
    );

    return estrellasAsignadas;
  }
}