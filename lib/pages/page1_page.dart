import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manejador_estado/bloc/usuario/usuario_cubit.dart';
import 'package:manejador_estado/models/usuario.dart';


class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () => context.bloc<UsuarioCubit>().borrarUsuario(),
          )
        ],
      ),
      body: BodyScaffold(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: () => Navigator.pushNamed(context, 'page2'),
      ),
   );
  }
}

class BodyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsuarioCubit, UsuarioState>(builder: (_, state) { 
      switch(state.runtimeType){
        case UsuarioInitial:
          return Center(child: Text('No hay un usuario.'),);
          break;
        case UsuarioActivo:
          return InformacionUsuario((state as UsuarioActivo).usuario);
          break;
        default:
          return Center(child: Text('No hay un usuario'),);
      }
      // if(state is UsuarioInitial){
      //   return Center(child: Text('No hay un usuario.'),);
      // }else if(state is UsuarioActivo){
      //   return InformacionUsuario(state.usuario);
      // }else {
      //   return Center(child: Text('No hay un usuario'),);
      // }
     },
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;

  const InformacionUsuario(this.usuario);

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

          ListTile(title: Text('Nombre: ${usuario.nombre}'),),
          ListTile(title: Text('Edad: ${usuario.edad}'),),
          Text('Profesiones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          ...usuario.profesiones.map(
            (profesion) => ListTile(title: Text('$profesion'))
          ).toList()

        ],
      ),
    );
  }
}