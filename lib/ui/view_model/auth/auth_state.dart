part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
 
    factory AuthState.initial() {
    return AuthState(
      isLoading: false,
      isError: false,
      auth: Auth(),
      successorFailure: const None(),
    );
  }
  const factory AuthState({
    required bool isLoading,
    required bool isError,
    required Auth auth,
    required Option<Either<MainFailure, Auth>> successorFailure,
  }) = _AuthState;
}
