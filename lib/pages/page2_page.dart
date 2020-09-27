import 'package:flutter/material.dart';
import 'package:manejador_estado/models/usuario.dart';
import 'package:manejador_estado/services/usuario_services.dart';


class Page2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: usuarioService.usuarioStream ,
          builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot){
            return snapshot.hasData ? Text('${snapshot.data.nombre}'): Text('Pagina 2');
          },
        ),
      ),
      body: CambiarDatos(),
   );
  }
}

class CambiarDatos extends StatelessWidget {
  const CambiarDatos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Column(
          children: [
            MaterialButton(
              child: Text('Establecer usuario', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                final nuevoUsuario = new Usuario(nombre: 'Cayetano', edad: 23);
                usuarioService.cargarUsuario(nuevoUsuario);
              },
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                usuarioService.cambiarEdad(20);
              },
            ),
            MaterialButton(
              child: Text('Agregar profesion', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                
              },
            )
          ],
        ),
      )
    );
  }
}