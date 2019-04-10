import "package:flutter/material.dart";

// Sustituir "clon_whatsapp" por el nombre de vuestro proyecto
import "package:clon_whatsapp/modelos/modelo_contacto_estado.dart";
import "package:clon_whatsapp/vistas/item_contacto_estado.dart";

class Estados extends StatefulWidget {
  @override
  _EstadosState createState() => _EstadosState();
}

class _EstadosState extends State<Estados> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Container(
          child: new ItemContactoEstado(estados[0], true),
          padding: const EdgeInsets.only(bottom:8.0)
        ),
        new Divider(
          height: 1,
        ),
        new Container(
          color: Color.fromARGB(255, 243, 243, 243),
          padding: const EdgeInsets.all(9.0),
          child: new Text(
            "Recientes",
            style: TextStyle(
              color: Color.fromARGB(255, 100, 100, 100),
            ),
          ), 
        ),
        new ItemContactoEstado(estados[1], false),
        new Divider(
          height: 18,
        ),
        new ItemContactoEstado(estados[2], false),
        new Divider(
          height: 18,
        )
      ],
    );
  }
}