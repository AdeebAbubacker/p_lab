import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_course_event.dart';
part 'selected_course_state.dart';
part 'selected_course_bloc.freezed.dart';

class SelectedCourseBloc extends Bloc<SelectedCourseEvent, SelectedCourseState> {
  SelectedCourseBloc() : super(_Initial()) {
    on<SelectedCourseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
