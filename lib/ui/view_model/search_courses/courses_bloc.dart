import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:panakj_app/core/db/adapters/course_adapter/course_adapter.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/search_course/datum.dart';
import 'package:panakj_app/core/model/search_course/search_course.dart';
import 'package:panakj_app/core/service/course_service.dart';

part 'courses_event.dart';
part 'courses_state.dart';
part 'courses_bloc.freezed.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
    final _bankController = StreamController<List<CourseDB>>.broadcast();
  final _updateStreamController = StreamController<bool>();
  final _getcourseservice = CourseService();
  CoursesBloc() : super(CoursesState.initial()) {

    on<GetCourses>(
      (event, emit) async {
        try {
          final response =
              await _getcourseservice.getCourseList(search: event.movieQuery);
               storeDataInHive(response.data!.toList());
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
    Future<void> storeDataInHive(List<Datum> data) async {
    final courseBox = await Hive.openBox<CourseDB>('courseBox');

    // Store the new data in Hive
    data.forEach((bank) {
      var existingBank = courseBox.get(bank.id);

      if (existingBank != null) {
        // If the object exists, update it
         existingBank.name = bank.name!; 
        
        courseBox.put(bank.id, existingBank);
      } else {
        // If the object doesn't exist, add it
        courseBox.put(
          bank.id,
          CourseDB(
            id: bank.id as int,
            name: bank.name as String,
            
          ),
        );
      }
    });
         // Notify listeners about the state change
    _updateStreamController.add(true);
    _bankController.add(courseBox.values.toList());
  }
}
