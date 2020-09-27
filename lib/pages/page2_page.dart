import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manejador_estado/bloc/usuario/usuario_bloc.dart';
import 'package:manejador_estado/models/usuario.dart';


class Page2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
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
                final newUsuario = new Usuario(
                  nombre: 'Cayetano',
                  edad: 23,
                  profesiones: ['Programador']
                );
                BlocProvider.of<UsuarioBloc>(context).add(
                  ActivarUsuario(newUsuario)
                );
              },
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                
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