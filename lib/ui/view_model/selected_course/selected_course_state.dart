part of 'selected_course_bloc.dart';

@freezed
class SelectedCourseState with _$SelectedCourseState {
  factory SelectedCourseState.initial() {
    return SelectedCourseState.courseSelected(selectedCourse: 0);
  }

  const factory SelectedCourseState.courseSelected({required int selectedCourse}) =
      _CourseSelected;
}
