import "package:flutter/material.dart";

// Sustituir "clon_whatsapp" por el nombre de vuestro proyecto
import "package:clon_whatsapp/modelos/modelo_contacto_estado.dart";
import "package:clon_whatsapp/rutas/estado_ruta.dart";

class ItemContactoEstado extends StatelessWidget {
  final ModeloContactoEstado _contacto;

  bool _miEstado;

  ItemContactoEstado(this._contacto, this._miEstado);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: new Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
               border: _miEstado==false ? new Border.all(
                  color: Theme.of(context).accentColor,
                  width: 2.0,
               ) : null,
          ),
          child: new Padding(
            padding: EdgeInsets.all(2.0),
            child:Container(
            width: 56.0,
            height: 56.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,    
                image: DecorationImage(
                    fit: BoxFit.cover,
                   image: AssetImage(_contacto.imagenContacto)
                )
            )
          ),
        ),
      ),
      title: new Text(
        _miEstado == true ? "Mi estado" :_contacto.nombre,
        style: new TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: new Text(
        _miEstado == true ? "Añade una actualización" :_contacto.fecha,
        style: new TextStyle(
          fontSize: 15.0,
          color: Colors.grey,
        ),
      ),
      onTap: (){
          Route ruta = new MaterialPageRoute(
            builder: (context) => new Estado(
              nombre: _contacto.nombre
            )
          );
          Navigator.push(context, ruta);
      },
    );
  }
}
