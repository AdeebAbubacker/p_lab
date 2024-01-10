import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/search_course/search_course.dart';
import 'package:panakj_app/core/service/course_service.dart';

part 'courses_event.dart';
part 'courses_state.dart';
part 'courses_bloc.freezed.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  final _getcourseservice = CourseService();
  CoursesBloc() : super(CoursesState.initial()) {

    on<GetCourses>(
      (event, emit) async {
        try {
          final response =
              await _getcourseservice.getCourseList(search: event.movieQuery);
          emit(CoursesState(
            isLoading: false,
            isError: false,
            course: response,

            successorFailure: optionOf(right(response)),
          ));
        } catch (e) {
          emit(
            CoursesState(
              isLoading: false,
              isError: true,
              course: SearchCourse(),
              successorFailure: optionOf(
                  left(MainFailure.clientFailure(message: e.toString()))),
            ),
          );
        }
      },
    );
  }
}
