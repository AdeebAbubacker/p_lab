import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/occupation_data/occupation_data.dart';
import 'package:panakj_app/core/service/occupation_seearch_service.dart';

part 'search_occupation_event.dart';
part 'search_occupation_state.dart';
part 'search_occupation_bloc.freezed.dart';

// class SearchOccupationBloc extends Bloc<SearchOccupationEvent, SearchOccupationState> {
//   SearchOccupationBloc() : super(_Initial()) {
//     on<SearchOccupationEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }

class SearchOccupationBloc extends Bloc<SearchOccupationEvent, SearchOccupationState> {
  final occupationService = OccupationService();
  SearchOccupationBloc() : super(SearchOccupationState.initial()) {
    on<SearchOccupationList>(
      (event, emit) async {
        try {
          final response = await occupationService.getOccupation(search: event.searchQuery);
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
}
