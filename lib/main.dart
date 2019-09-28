import 'package:flutter/material.dart';
import 'retos/reto1.dart';
import 'inicio/autor.dart';

void main() => runApp(MyApp());
// void main() => runApp(Reto1());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Taller Cytiis 2019')
        ),
        body: new Autor()
      ),
    );
  }
}
