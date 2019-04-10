import "package:flutter/material.dart";

// Sustituir "clon_whatsapp" por el nombre de vuestro proyecto
import "package:clon_whatsapp/rutas/camara_tab.dart";
import "package:clon_whatsapp/rutas/chats_tab.dart";
import "package:clon_whatsapp/rutas/estados_tab.dart";
import "package:clon_whatsapp/rutas/llamadas_tab.dart";

class WhatsAppRutaHome extends StatefulWidget {

  @override
  _WhatsAppRutaHomeState createState() => new _WhatsAppRutaHomeState();
}

class _WhatsAppRutaHomeState extends State<WhatsAppRutaHome> 
  with SingleTickerProviderStateMixin{

  TabController _controladorTabs;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controladorTabs = new TabController(
      vsync: this,
      initialIndex: 1,
      length: 4
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ESIApp"),
        bottom: new TabBar(
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(
              text: "CHATS"
            ),
            new Tab(
              text: "ESTADOS",
            ),
            new Tab(
              text: "LLAMADAS",
            )
          ],
          controller: _controladorTabs,
        )
      ),
      body: new TabBarView(
        children: <Widget>[
          new Camara(),
          new Chats(),
          new Estados(),
          new Llamadas() 
        ],
        controller: _controladorTabs,
      )
    );
  }
}