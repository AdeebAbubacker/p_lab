part of 'selctedbank_bloc.dart';

@freezed
class SelctedbankEvent with _$SelctedbankEvent {
  const factory SelctedbankEvent.started() = _Started;
  const factory SelctedbankEvent.selectedBank( {required int selectedBank}) = _SelectedBank;
}

