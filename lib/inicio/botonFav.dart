import 'package:flutter/material.dart';

class BotonFav extends StatefulWidget{
  @override
  _BotonFav createState() => _BotonFav();
}

class _BotonFav extends State<BotonFav>{
  bool estaActivo = false;
  IconData icono = Icons.favorite_border;
  String mensaje = "";

  void favPresionado(){
    
    setState( () => estaActivo = !estaActivo );

    if( estaActivo ){
      icono = Icons.favorite;
      mensaje = "Agregaste a favoritos";
    }else{
      icono = Icons.favorite_border;
      mensaje = "Eliminaste de favoritos";
    }

    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text(mensaje)
      )
    );
  }

  @override
  Widget build(BuildContext context){

    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: Icon(
        icono
      ),
      onPressed: favPresionado,
    );
  }

}