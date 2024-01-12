part of 'search_qualification_bloc.dart';

@freezed
class SearchQualificationEvent with _$SearchQualificationEvent {
  const factory SearchQualificationEvent.started() = _Started;
 const factory SearchQualificationEvent.searchQualificationList({
    required String searchQuery,
  }) = SearchQualificationList;
}

// class SearchOccupationEvent with _$SearchOccupationEvent {
//   const factory SearchOccupationEvent.searchQualificationList({
//     required String searchQuery,
//   }) = SearchQualificationList;
// }