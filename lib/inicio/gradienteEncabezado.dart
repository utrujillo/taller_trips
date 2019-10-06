import 'package:flutter/material.dart';

class GradienteEncabezado extends StatelessWidget{
  String titulo = "";

  GradienteEncabezado(this.titulo);

  @override
  Widget build(BuildContext context){
    final gradiente = Container(
      height: 280.0,
      decoration: BoxDecoration( //Box decoration es la clase que me permite dar formato a una caja de texto
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2, 0.0), // Desde donde va a comenzar el gradiente
          end: FractionalOffset(1.0, 0.6), // Hasta donde quiero que llegue
          stops: [0.0, 0.6], //La orientacion del gradiente arriba-abajo, abajo-arriba, derecha-izquierda
          tileMode: TileMode.clamp //Esta propiedad pone un color de fondo si nuestro gradiente no carga correctamente
        )
      ),

      child: Text(
        titulo,
        style: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
          fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment(-0.9, -0.7),
    );
    return gradiente;
  }
}