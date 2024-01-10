part of 'academic_bloc.dart';

@freezed
class AcademicEvent with _$AcademicEvent {
  const factory AcademicEvent.started() = _Started;
  const factory AcademicEvent.postAcademicInfo({
    required final int school,
    required final int reg_no,
    required final int sslc,
    required final int plus_one,
    required final int plus_two,
    required final int course_pref,
    required final int category,
    required final String details,
    required final String title,
    required final String description,
    required final String attachment,
  }) = postAcademicInfo;
}
