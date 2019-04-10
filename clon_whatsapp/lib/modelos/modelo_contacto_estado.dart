// Sustituir "clon_whatsapp" por el nombre de vuestro proyecto
import "package:clon_whatsapp/modelos/modelo_contacto_chat.dart";

class ModeloContactoEstado {
  String _nombre;
  String _fecha;
  String _imagenContacto;

  ModeloContactoEstado({String nombre, String fecha, String imagenContacto}) {
    this._nombre = nombre;
    this._fecha = fecha;
    this._imagenContacto = imagenContacto;
  }

  String get nombre => _nombre;
  String get fecha => _fecha;
  String get imagenContacto => _imagenContacto;
}

List<ModeloContactoEstado> estados = <ModeloContactoEstado>[
  ModeloContactoEstado(
      nombre: "Iván",
      fecha: "10:33",
      imagenContacto: "imagenes/ivanperfilMAmIoT.jpg"),
  ModeloContactoEstado(
      nombre: chats[2].nombre,
      fecha: "Ayer 19:51",
      imagenContacto: chats[2].imagenContacto),
  ModeloContactoEstado(
      nombre: chats[5].nombre,
      fecha: "Ayer 20:52",
      imagenContacto: chats[5].imagenContacto),
];
