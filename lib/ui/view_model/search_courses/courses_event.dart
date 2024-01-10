part of 'courses_bloc.dart';

@freezed
class CoursesEvent with _$CoursesEvent {
  const factory CoursesEvent.getCourses({String? movieQuery}) = GetCourses;
}

