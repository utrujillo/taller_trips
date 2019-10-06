import 'package:flutter/material.dart';
import 'package:taller_trips/inicio/resenha.dart';

class ResenhaList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final resenhas = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Resenha("assets/images/luffy.jpg", "Monkey D. Luffy", "3 reseñas, 5 fotos", 5, "Me convertire en el rey de los piratas!!"),
        new Resenha("assets/images/yoh.jpg", "Yoh Asakura", "2 reseñas, 3 fotos", 4.5, "Todo tiene solución"),
        new Resenha("assets/images/mika.jpg", "Mikazuki Augus", "7 reseñas, 1 fotos", 3, "Gundam Barbatos")
      ],
    );
    
    return resenhas;
  }
}