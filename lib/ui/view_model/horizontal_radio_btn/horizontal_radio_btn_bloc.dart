import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'horizontal_radio_btn_event.dart';
part 'horizontal_radio_btn_state.dart';

class HorizontalRadioBtnBloc
    extends Bloc<HorizontalRadioBtnEvent, HorizontalRadioBtnState> {
  HorizontalRadioBtnBloc() : super(HorizontalRadioBtnState(groupValue: 0)) {
    on<SetGroupValueEvent>((event, emit) async {
      final newGroupValue = event.value;
      emit(HorizontalRadioBtnState(groupValue: newGroupValue));
    });
  }
}
