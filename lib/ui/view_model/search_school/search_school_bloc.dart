import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:panakj_app/core/db/adapters/school_adapter/school_adapter.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/search_school/datum.dart';
import 'package:panakj_app/core/model/search_school/search_school.dart';
import 'package:panakj_app/core/service/school_service.dart';
part 'search_school_event.dart';
part 'search_school_state.dart';
part 'search_school_bloc.freezed.dart';

class SearchSchoolBloc extends Bloc<SearchSchoolEvent, SearchSchoolState> {
  final _schoolController = StreamController<List<SchoolDB>>.broadcast();
  final _updateStreamController = StreamController<bool>();
  final _getschoolservice = SchoolService();
  SearchSchoolBloc() : super(SearchSchoolState.initial()) {
    on<GetSchool>((event, emit) async {
      try {
        final response =
            await _getschoolservice.getSchool(search: event.schoolQuery);
        emit(SearchSchoolState(
          isLoading: false,
          isError: false,
          school: response,
          successorFailure: optionOf(right(response)),
        ));
          // Call storeDataInHive to update Hive with the new data
    await storeDataInHive(response.data!.data!.toList());
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
  Future<void> storeDataInHive(List<Datum> data) async {
    final schoolBox = await Hive.openBox<SchoolDB>('schoolBox');

    // Store the new data in Hive
    data.forEach((school) {
      var existingBank = schoolBox.get(school.id);

      if (existingBank != null) {
        // If the object exists, update it
        existingBank.name = school.name!;

        schoolBox.put(school.id, existingBank);
      } else {
        // If the object doesn't exist, add it
        schoolBox.put(
          school.id,
          SchoolDB(
            id: school.id as int,
            name: school.name as String,
          ),
        );
      }
    });
    // Notify listeners about the state change
    _updateStreamController.add(true);
    _schoolController.add(schoolBox.values.toList());
  }
}
