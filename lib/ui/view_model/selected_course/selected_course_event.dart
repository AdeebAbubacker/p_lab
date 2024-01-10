part of 'selected_course_bloc.dart';

@freezed
class SelectedCourseEvent with _$SelectedCourseEvent {
  const factory SelectedCourseEvent.started() = _Started;
   const factory SelectedCourseEvent.selectedCourse( {required int selectedCourse}) = _SelectedCourse;
}