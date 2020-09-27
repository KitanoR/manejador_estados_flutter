part of 'usuario_bloc.dart';

@immutable
abstract class UsuarioEvents {}

class ActivarUsuario extends UsuarioEvents {
  final Usuario usuario;
  ActivarUsuario(this.usuario);

  @override
  String toString() {
    return 'Instance of Usuario: ${this.usuario.nombre}';
  }
}