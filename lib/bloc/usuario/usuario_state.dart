part of 'usuario_cubit.dart';

@immutable
abstract class UsuarioState{}

class UsuarioInitial extends UsuarioState {
  final existeUsuario = false; 
}

class UsuarioActivo extends UsuarioState {
  final existeUsuario = false; 
  final Usuario usuario;

  UsuarioActivo(this.usuario);
}