part of 'search_school_bloc.dart';

@freezed
class SearchSchoolEvent with _$SearchSchoolEvent {
  const factory SearchSchoolEvent.getSchool({String? schoolQuery}) = GetSchool;
}
