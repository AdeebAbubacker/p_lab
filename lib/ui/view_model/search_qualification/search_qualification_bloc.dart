import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:panakj_app/core/db/adapters/qualification_adapter/qualification_adapter.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/search_qualification/datum.dart';
import 'package:panakj_app/core/model/search_qualification/search_qualification.dart';
import 'package:panakj_app/core/service/qualification_service.dart';
part 'search_qualification_event.dart';
part 'search_qualification_state.dart';
part 'search_qualification_bloc.freezed.dart';

class SearchQualificationBloc
    extends Bloc<SearchQualificationEvent, SearchQualificationState> {
  final _qualificationController =
      StreamController<List<qualificationDB>>.broadcast();
  final _updateStreamController = StreamController<bool>();
  final qualificationService = QualificationService();
  SearchQualificationBloc() : super(SearchQualificationState.initial()) {
    on<SearchQualificationList>(
      (event, emit) async {
        try {
          final response = await qualificationService.getQualificationList(
              search: event.searchQuery);
          // Store data in Hive
          storeDataInHive(response.data!.toList());
          print(
              'searched item from occupation -----------------${response.data!.toList().map((e) => e.name)}');
          emit(SearchQualificationState(
            isLoading: false,
            isError: false,
            qualification: response,
            successorFailure: optionOf(right(response)),
          ));
        } catch (e) {
          emit(SearchQualificationState(
            isLoading: false,
            isError: true,
            qualification: SearchQualification(),
            successorFailure: optionOf(
                left(MainFailure.clientFailure(message: e.toString()))),
          ));
        }
      },
    );
  }

  Future<void> storeDataInHive(List<Datum> data) async {
    final qualificationBox =
        await Hive.openBox<qualificationDB>('qualificationBox');

    if (data.isNotEmpty) {
      

      // Store the new data in Hive
      data.forEach((qualification) {
        qualificationBox.put(
          qualification.id,
          qualificationDB(
            id: qualification.id as int,
            name: qualification.name as String,
            deleted_at: '',
            status: true,
          ),
        );
      });

      // Notify listeners about the state change
      _updateStreamController?.add(true);
      _qualificationController.add(qualificationBox.values.toList());
    }
  }
}
