import "package:flutter/material.dart";
// Sustituir "clon_whatsapp" por el nombre de vuestro proyecto

class MensajeChat extends StatelessWidget {
  String mensaje;
  final AnimationController controladorAnimacion;

  MensajeChat(
      {this.mensaje, this.controladorAnimacion});

  @override
  Widget build(BuildContext context) {
    return new FadeTransition(
      opacity: new CurvedAnimation(
          parent: controladorAnimacion, 
          curve: Curves.easeIn),
      child: new Container(
        alignment: Alignment.bottomRight,
        child: new Container(
          margin: EdgeInsets.only(
            bottom:3.0, 
            right:16.0,
            left:100.0
          ),
          padding: EdgeInsets.all(8.0),
          decoration: new BoxDecoration(
          color: Color.fromARGB(255,220,248,198),
          borderRadius: new BorderRadius.all(
            Radius.circular(8.0)
          ),
          boxShadow: [
            new BoxShadow(
              color: Color.fromARGB(255, 150, 150, 150),
              offset: new Offset(0, 1), 
            )
          ]
        ),
        child:new Text(
            mensaje,
          )
        )
      ),
    );
  }
}
