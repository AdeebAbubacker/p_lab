part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
    const factory AuthEvent.mylogin({
    required String email,
    required String password,
  }) = MyLogin;
}