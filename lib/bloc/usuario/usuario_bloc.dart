import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:manejador_estado/models/usuario.dart';


part 'usuario_events.dart';
part 'usuario_state.dart';

// Bloc<Eventos, Estado>
class UsuarioBloc extends Bloc<UsuarioEvents, UsuarioState> {

  UsuarioBloc() : super(UsuarioState());
  
  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvents event) async* {
    if(event is ActivarUsuario){
      yield state.copyWith(user: event.usuario);
    }else if(event is CambiarEdad){
      yield state.copyWith(user: state.usuario.copyWith(edad: event.edad));
    }else if(event is CambiarProfesiones){
      List<String> nuevasProfesiones = [
        ...state.usuario.profesiones,
        event.nuevaProfesion
      ];
      yield state.copyWith(user: state.usuario.copyWith(profesiones: nuevasProfesiones));
    }else if(event is BorrarUsuario){
      yield state.estadoInicial();
    }
    
  }
 
}