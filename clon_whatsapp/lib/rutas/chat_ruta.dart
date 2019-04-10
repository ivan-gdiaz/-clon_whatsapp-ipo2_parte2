import "package:flutter/material.dart";

// Sustituir "clon_whatsapp" por el nombre de vuestro proyecto
import "package:clon_whatsapp/modelos/modelo_contacto_chat.dart";
import "package:clon_whatsapp/vistas/mensaje_chat.dart";

class Chat extends StatefulWidget {
  // Propiedad inmutable
  ModeloContactoChat contacto;

  Chat({this.contacto});

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> with TickerProviderStateMixin {

  TextEditingController _mensajeControlador;
  List<MensajeChat> _mensajes;
  bool _estaVacio;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mensajeControlador = new TextEditingController();
    _mensajes = new List<MensajeChat>();
    _estaVacio = true;
  }

  void _submitMensaje(String texto) {
    _mensajeControlador.clear();
    setState(() {
      _estaVacio = true;
    });
    MensajeChat mensajeChat = new MensajeChat(
      mensaje: texto,
      controladorAnimacion: new AnimationController(
        vsync: this,
        duration: Duration(
          milliseconds: 100
        )
      )
    );

    setState(() {
      _mensajes.insert(0, mensajeChat);
    });

    // Importante para que se ejecute la animación
    mensajeChat.controladorAnimacion.forward();

    // Lo imprimimos por terminal.
    print(texto);
  }

  Widget _construirEspacioMensajes() {
    return new Expanded(
      child: new ListView.builder(
        reverse: true,
        itemCount: _mensajes.length,
        itemBuilder: (context, int index) => _mensajes[index]),
    );
  }

  Widget _construirAppBar() {
    return new AppBar(
      titleSpacing: -15.0,
      title: new Row(
        children: <Widget>[
          new Container(
            width: 35.0,
            height: 35.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(widget.contacto.imagenContacto)
              )
            )
          ),
          new Container(
            padding: EdgeInsets.all(8.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  widget.contacto.nombre,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                new Text(widget.contacto.fecha,
                  style: TextStyle(
                    fontSize: 13.0,
                  )
                )
              ]
            ),
          )
        ],
      ),
      actions: <Widget>[
        new IconButton(
          icon: new Icon(Icons.videocam),
          onPressed: () {},
        ),
        new IconButton(
          icon: new Icon(Icons.phone),
          onPressed: () {},
        ),
        new IconButton(
          icon: new Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
    );
  }
  
@override
Widget build(BuildContext context) {
  return new Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("imagenes/fondo.jpg"),
        fit: BoxFit.fill,
      )
    ),
    child: new Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _construirAppBar(),
      body: new Container(
        child: new Column(
        children: <Widget>[
          _construirEspacioMensajes(),
          new Row(
            children: <Widget>[
              Expanded(
                child: new Container(
                  margin: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.all(
                      Radius.circular(24.0)
                    ),
                  ),
                  child: new Row(
                    children: <Widget>[
                      new Padding(
                        padding: EdgeInsets.only(left: 5.0)
                      ),
                      new IconButton(
                        icon: Icon(Icons.tag_faces),
                        color: Colors.grey,
                        onPressed: () {}
                      ),
                      new Flexible(
                        child: new TextField(
                          decoration: InputDecoration.collapsed(
                            hintText: "Escribe un mensaje",
                          ),
                          onChanged: (String data) {
                            setState((){
                              _estaVacio = data.length==0 ? true : false;
                            });
                          },
                          maxLines: null,
                          controller: _mensajeControlador,
                        ),
                      ),
                      new IconButton(
                        icon: new ImageIcon(
                          new AssetImage("imagenes/clipIcon.png")
                        ),
                        color: Colors.grey,
                        onPressed: () {},
                      ),
                      new IconButton(
                        icon: Icon(Icons.camera_alt),
                        color: Colors.grey,
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ),
              new Container(
                width: 57.0,
                padding: EdgeInsets.only(right: 7.0),
                child: new FloatingActionButton(
                  child: new Icon(Icons.mic),
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white,
                  onPressed: () => _estaVacio==false ? 
                    _submitMensaje(_mensajeControlador.text): null,
                ),
              )
            ],
          ),
        ],
      ),
    )
  )
 );}
}