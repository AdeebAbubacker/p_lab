import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selctedbank_event.dart';
part 'selctedbank_state.dart';
part 'selctedbank_bloc.freezed.dart';

class SelctedbankBloc extends Bloc<SelctedbankEvent, SelctedbankState> {
  SelctedbankBloc() : super(SelctedbankState.initial()) {
    on<_SelectedBank>((event, emit) {
      emit(SelctedbankState.bankSelected(selectedBank: event.selectedBank));
    });
  }
}
