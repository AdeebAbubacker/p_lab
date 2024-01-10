part of 'get_bank_bloc.dart';

@freezed
class GetBankEvent with _$GetBankEvent {
  const factory GetBankEvent.searchBankList({
    required String bankQuery,
  }) = GetBankList;
}
