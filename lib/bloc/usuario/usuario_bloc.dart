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
      yield UsuarioState(user: event.usuario);
    }
    
  }
 
}