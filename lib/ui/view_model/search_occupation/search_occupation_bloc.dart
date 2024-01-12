import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:panakj_app/core/db/adapters/occupation_adapter/occupation_adapter.dart';
import 'package:panakj_app/core/model/drop_down_values/occupation.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/occupation_data/datum.dart';
import 'package:panakj_app/core/model/occupation_data/occupation_data.dart';
import 'package:panakj_app/core/service/occupation_seearch_service.dart';

part 'search_occupation_event.dart';
part 'search_occupation_state.dart';
part 'search_occupation_bloc.freezed.dart';



class SearchOccupationBloc extends Bloc<SearchOccupationEvent, SearchOccupationState> {
    final _OccupationController = StreamController<List<OccupationDB>>.broadcast();
  final _updateStreamController = StreamController<bool>();
  final occupationService = OccupationService();
 
  SearchOccupationBloc() : super(SearchOccupationState.initial()) {
    on<SearchOccupationList>(
      (event, emit) async {
        try {
          final response = await occupationService.getOccupation(search: event.searchQuery);
           storeDataInHive(response.data!.toList());
           print('searched item from occupation -----------------${response.data![1].name}');
          emit(SearchOccupationState(
            isLoading: false,
            isError: false,
            occupation: response,
            successorFailure: optionOf(right(response)),
          ));
          // ignore: avoid_print
        
          // print(
          //     'my respone is ----------- ${response.data!.map((e) => e.)}');
        } catch (e) {
          emit(SearchOccupationState(
            isLoading: false,
            isError: true,
            occupation: OccupationData(),
            successorFailure: optionOf(
                left(MainFailure.clientFailure(message: e.toString()))),
          ));
        }
      },
    );
  }
  Future<void> storeDataInHive(List<Datum> data) async {
    final occupationBox = await Hive.openBox<OccupationDB>('occupationBox');

    // Store the new data in Hive
    data.forEach((Occupation) {
      var existingBank = occupationBox.get(Occupation.id);

      if (existingBank != null) {
        // If the object exists, update it
         existingBank.name = Occupation.name!; 
        
        occupationBox.put(Occupation.id, existingBank);
      } else {
        // If the object doesn't exist, add it
        occupationBox.put(
          Occupation.id,
          OccupationDB(
            id: Occupation.id as int,
            name: Occupation.name as String,
           active: 1,
           deleted_at: 'a'
          ),
        );
      }
    });
         // Notify listeners about the state change
    _updateStreamController.add(true);
    _OccupationController.add(occupationBox.values.toList());
  }
}

