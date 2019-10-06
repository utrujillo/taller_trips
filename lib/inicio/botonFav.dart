import 'package:flutter/material.dart';

class BotonFav extends StatefulWidget{
  @override
  _BotonFav createState() => _BotonFav();
}

class _BotonFav extends State<BotonFav>{

  void favPresionado(){
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("Agregaste a favoritos")
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
        Icons.favorite_border
      ),
      onPressed: favPresionado,
    );
  }

}