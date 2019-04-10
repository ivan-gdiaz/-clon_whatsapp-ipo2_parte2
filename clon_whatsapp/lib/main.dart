import "package:flutter/material.dart";
// Sustituir "clon_whatsapp" por el nombre de vuestro proyecto
import "package:clon_whatsapp/rutas/whatsapp_ruta_home.dart";

void main() {

  runApp(new MaterialApp(
      home: new WhatsAppRutaHome(),
      title: "Clon de WhatsApp (ESIApp)",
      theme: new ThemeData(
          primaryColor: new Color(0xff075E54),
          accentColor: new Color(0xff25D366),
          ),
      debugShowCheckedModeBanner: false,    
    ));    
}


