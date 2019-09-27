import 'package:flutter/material.dart';

class Reto1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text('Regresar')
        ),
        body: Center(
          child: Container(
            color: Colors.black.withOpacity(0.3),
            height: 50.0,
            width: double.infinity,
            padding: const EdgeInsets.all(9.0),
            child: Text(
              'Haciendo pruebas con Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25)
            ),
          ),
        )
      ),
    );
  }
}