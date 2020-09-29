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

class CambiarEdad extends UsuarioEvents {
  final int edad;

  CambiarEdad(this.edad);
}

class CambiarProfesiones extends UsuarioEvents {
  final String nuevaProfesion;

  CambiarProfesiones(this.nuevaProfesion);
}

class BorrarUsuario extends UsuarioEvents{}