import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'info_content_event.dart';
part 'info_content_state.dart';

class InfoContentBloc extends Bloc<InfoContentEvent, InfoContentState> {
  InfoContentBloc() : super(InfoContentInitial()) {
    on<InfoContentEvent>((event, emit) {
     
    });
  }
}
