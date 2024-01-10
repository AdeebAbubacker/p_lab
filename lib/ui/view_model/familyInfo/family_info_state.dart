part of 'family_info_bloc.dart';

@freezed
class FamilyInfoState with _$FamilyInfoState {
  
    factory FamilyInfoState.initial() {
    return FamilyInfoState(
      isLoading: false,
      isError: false,
      familyInfo: FamilyData(),
      successorFailure: const None(),
    );
  }

  const factory FamilyInfoState({
    required bool isLoading,
    required bool isError,
    required FamilyData familyInfo,
    required Option<Either<MainFailure, FamilyData>> successorFailure,
  }) = _FamilyInfoState;
}
