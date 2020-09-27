import 'package:flutter/material.dart';
import 'package:manejador_estado/models/usuario.dart';
import 'package:manejador_estado/services/usuario_services.dart';


class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: StreamBuilder(
        stream: usuarioService.usuarioStream ,
        builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot){
          return snapshot.hasData ? InformacionUsuario() : Center(child: Text('No hay usuario'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: () => Navigator.pushNamed(context, 'page2'),
      ),
   );
  }
}

class InformacionUsuario extends StatelessWidget {
  const InformacionUsuario({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),

          ListTile(title: Text('Nombre: ${usuarioService.usuario.nombre}'),),
          ListTile(title: Text('Edad: ${usuarioService.usuario.edad}'),),
          Text('Profesiones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(title: Text('Profesion 1'),),
          ListTile(title: Text('Profesion 1'),),
          ListTile(title: Text('Profesion 1'),),

        ],
      ),
    );
  }
}