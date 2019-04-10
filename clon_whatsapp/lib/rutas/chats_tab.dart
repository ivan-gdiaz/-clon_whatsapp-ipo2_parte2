import "package:flutter/material.dart";

// Sustituir "clon_whatsapp" por el nombre de vuestro proyecto
import "package:clon_whatsapp/modelos/modelo_contacto_chat.dart";
import "package:clon_whatsapp/vistas/item_contacto_chat.dart";

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, int item) => new ItemContactoChat( chats[item] )
    );
  }
}
