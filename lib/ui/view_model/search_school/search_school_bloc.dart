import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/search_school/search_school.dart';
import 'package:panakj_app/core/service/school_service.dart';

part 'search_school_event.dart';
part 'search_school_state.dart';
part 'search_school_bloc.freezed.dart';

class SearchSchoolBloc extends Bloc<SearchSchoolEvent, SearchSchoolState> {
  final _getschoolservice = SchoolService();
  SearchSchoolBloc() : super(SearchSchoolState.initial()) {
    on<GetSchool>((event, emit) async{
       
        try {
          final response =
              await _getschoolservice.getSchool(search: event.schoolQuery);
          emit(SearchSchoolState(
            isLoading: false,
            isError: false,
            school: response,

            successorFailure: optionOf(right(response)),
          ));
        } catch (e) {
          emit(
            SearchSchoolState(
              isLoading: false,
              isError: true,
              school: SearchSchool(),
              successorFailure: optionOf(
                  left(MainFailure.clientFailure(message: e.toString()))),
            ),
          );
        }
      
    });
  }
}



