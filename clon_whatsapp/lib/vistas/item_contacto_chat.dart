import "package:flutter/material.dart";

// Sustituir "clon_whatsapp" por el nombre de vuestro proyecto
import "package:clon_whatsapp/modelos/modelo_contacto_chat.dart";
import "package:clon_whatsapp/rutas/chat_ruta.dart";

class ItemContactoChat extends StatelessWidget {

  final ModeloContactoChat _contacto;

  ItemContactoChat(this._contacto);

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new ListTile(
        leading: Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(60.0)),
                color: Colors.transparent,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(_contacto.imagenContacto)
                )
            )
          ),
        title: new Row(
          children: <Widget>[
            new Text(
              _contacto.nombre,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            new Text(
              _contacto.fecha,
              style: new TextStyle(
                fontSize: 13.5,
                color: Colors.grey,
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        subtitle: new Container(
          child: new Text(
            _contacto.mensaje,
            style: new TextStyle(
              fontSize: 15.0,
              color: Colors.grey,
            ),
          ),
          padding: const EdgeInsets.only(top: 5.0),
        ),
        onTap: (){
          Route ruta = new MaterialPageRoute(
            builder: (context) => new Chat(
              contacto: _contacto
            )
          );
          Navigator.push(context, ruta);
        },
      ),
      new Divider(
        height: 18.0,
      ),
    ]);
  }
}
