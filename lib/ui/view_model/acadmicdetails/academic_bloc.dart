import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:panakj_app/core/model/academic_data_model/academic_data_model.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/service/academic_service.dart';

part 'academic_event.dart';
part 'academic_state.dart';
part 'academic_bloc.freezed.dart';

class AcademicBloc extends Bloc<AcademicEvent, AcademicState> {
  final academicService = AcademicService();
  AcademicBloc() : super(AcademicState.initial()) {
    on<postAcademicInfo>((event, emit) async {
      try {
        print('from academic bloc success');
        final response = await academicService.academicInfo(
          sslc: event.sslc,
          plus_one: event.plus_one,
          plus_two: event.plus_two,
        );
        emit(state.copyWith(
            isLoading: false,
            isError: false,
            academicData: response,
            successorFailure: optionOf(right(response))));
        print(
            'school id--------------${state.academicData.data!.academics!.schoolId}');
        print(
            'reg no --------------${state.academicData.data!.academics!.regNo}');
        print(
            'sslc --------------${state.academicData.data!.academics!.markSslc}');
        print(
            'plus one --------------${state.academicData.data!.academics!.markP1}');

        print(
            'plus two --------------${state.academicData.data!.academics!.markP2}');
      } catch (e) {
        // print('from  acdemic bloc file errorr ${e.toString()}');
        emit(state.copyWith(
            isLoading: false,
            isError: true,
            successorFailure: optionOf(
                left(MainFailure.clientFailure(message: e.toString())))));
      }
      await Future.delayed(Duration.zero);
      emit(AcademicState.initial());
    });
  }
}
