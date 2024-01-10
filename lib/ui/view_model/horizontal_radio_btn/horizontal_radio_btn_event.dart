part of 'horizontal_radio_btn_bloc.dart';

@immutable
abstract class HorizontalRadioBtnEvent {}

class SetGroupValueEvent extends HorizontalRadioBtnEvent{
  final int value;
  SetGroupValueEvent(this.value);
}



