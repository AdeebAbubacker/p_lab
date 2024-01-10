part of 'personal_info_bloc.dart';

@freezed
class PersonalInfoEvent with _$PersonalInfoEvent {
  const factory PersonalInfoEvent.started() = _Started;
      const factory PersonalInfoEvent.postPersonalInfo({
    required String name,
    required String gender,
    required String dob,
    required String phone,
    required String address,
    required String email,
    required String bankaccname,
    required String bankaccno,
    required int bankid,
    required String bankifsc,
  }) = PostPersonalInfo;
}


