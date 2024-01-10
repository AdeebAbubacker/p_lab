part of 'selctedbank_bloc.dart';

@freezed
class SelctedbankState with _$SelctedbankState {
  factory SelctedbankState.initial() {
    return SelctedbankState.bankSelected(selectedBank: 0);
  }

  const factory SelctedbankState.bankSelected({required int selectedBank}) =
      _BankSelected;
}
