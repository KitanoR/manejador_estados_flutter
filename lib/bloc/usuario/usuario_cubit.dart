

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manejador_estado/models/usuario.dart';
import 'package:meta/meta.dart';

part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInitial());
  
  void seleccionarUsuario(Usuario usuario){
    emit(UsuarioActivo(usuario));
  }

  void cambiarEdad(int edad){
    final currentState = state;
    if(currentState is UsuarioActivo){
      emit(UsuarioActivo(currentState.usuario.copyWith(edad: edad)));
    }
  }

  void agregarProfesion() {
    final currentState = state;
    if(currentState is UsuarioActivo){
        final listaProfesiones = [
          ...currentState.usuario.profesiones,
          'Profesion ${currentState.usuario.profesiones.length + 1}'
        ];
        print(listaProfesiones);
        emit(UsuarioActivo(currentState.usuario.copyWith(profesiones: listaProfesiones)));
    }
  }

  void borrarUsuario() {
    emit(UsuarioInitial());
  }
}

