class ModeloContactoChat{
  String _nombre;
  String _fecha;
  String _imagenContacto;
  String _mensaje;

  ModeloContactoChat({String nombre, String fecha,
    String imagenContacto, String mensaje}){
      this._nombre = nombre;
      this._fecha = fecha;
      this._imagenContacto = imagenContacto;
      this._mensaje = mensaje;
  }

  String get nombre => _nombre;
  String get fecha => _fecha;
  String get imagenContacto => _imagenContacto;
  String get mensaje => _mensaje;
}

List<ModeloContactoChat> chats = <ModeloContactoChat>[
      ModeloContactoChat(
          nombre: "David Gilmour",
          fecha: "19:33",
          imagenContacto: "imagenes/gilmour.jpg",
          mensaje: "Iván, nos vemos en la gira!"),
      ModeloContactoChat(
          nombre: "Roger Waters",
          fecha: "18:32",
          imagenContacto: "imagenes/waters.jpg",
          mensaje: "Roger Waters: Sí ahora Trump quiere..."),
      ModeloContactoChat(
          nombre: "Richard Wright",
          fecha: "13:52",
          imagenContacto: "imagenes/wright.jpg",
          mensaje: "Wish you were here!"),
      ModeloContactoChat(
          nombre: "Nick Mason",
          fecha: "Ayer",
          imagenContacto: "imagenes/mason.jpg",
          mensaje: "Nick Mason: sí sí me llamaron"
              "de Top..."),
      ModeloContactoChat(
          nombre: "John Lennon",
          fecha: "Ayer",
          imagenContacto: "imagenes/lennon.jpg",
          mensaje: "John Lennon: imagine all the"
              "people living..."),
      ModeloContactoChat(
          nombre: "Paul McCartney",
          fecha: "Ayer",
          imagenContacto: "imagenes/mccartney.jpg",
          mensaje: "Paul McCartney: Let it be! Let it be!"),
      ModeloContactoChat(
          nombre: "George Harrison",
          fecha: "Ayer",
          imagenContacto: "imagenes/harrison.jpg",
          mensaje: "El beatle místico"),
      ModeloContactoChat(
          nombre: "Ringo Starr",
          fecha: "Ayer",
          imagenContacto: "imagenes/starr.jpg",
          mensaje: "Sir Richard Starkey"),
      ModeloContactoChat(
          nombre: "Mick Jagger",
          fecha: "5/4/19",
          imagenContacto: "imagenes/jagger.jpg",
          mensaje: "Ánimo Mick todo saldrá bien."),
      ModeloContactoChat(
          nombre: "Paul McCartney",
          fecha: "Ayer",
          imagenContacto: "imagenes/mccartney.jpg",
          mensaje: "Paul McCartney: Let it be! Let it be!"),
      ModeloContactoChat(
          nombre: "George Harrison",
          fecha: "Ayer",
          imagenContacto: "imagenes/harrison.jpg",
          mensaje: "El beatle místico"),
      ModeloContactoChat(
          nombre: "Ringo Starr",
          fecha: "Ayer",
          imagenContacto: "imagenes/starr.jpg",
          mensaje: "Sir Richard Starkey"),
      ModeloContactoChat(
          nombre: "Mick Jagger",
          fecha: "5/4/19",
          imagenContacto: "imagenes/jagger.jpg",
          mensaje: "Ánimo Mick todo saldrá bien."),
    ];
