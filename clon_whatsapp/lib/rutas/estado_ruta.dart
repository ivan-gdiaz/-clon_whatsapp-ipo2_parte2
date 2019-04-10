import "package:flutter/material.dart";

class Estado extends StatefulWidget {
 
 // Propiedad inmutable
  final String nombre;

  Estado({this.nombre});

  @override
  _EstadoState createState() => _EstadoState();
}

class _EstadoState extends State<Estado> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.nombre),
      ), 
      body: new Container()
    );
  }
}
