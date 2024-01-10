part of 'search_occupation_bloc.dart';

@freezed
class SearchOccupationEvent with _$SearchOccupationEvent {
  const factory SearchOccupationEvent.searchOccupationList({
    required String searchQuery,
  }) = SearchOccupationList;
}
