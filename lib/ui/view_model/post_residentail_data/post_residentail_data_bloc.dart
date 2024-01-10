import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/residential_data/residential_data.dart';
import 'package:panakj_app/core/service/residential_service.dart';

part 'post_residentail_data_event.dart';
part 'post_residentail_data_state.dart';
part 'post_residentail_data_bloc.freezed.dart';

class PostResidentailDataBloc
    extends Bloc<PostResidentailDataEvent, PostResidentailDataState> {
  final residentailInfoService = ResidentailInfoService();
  PostResidentailDataBloc() : super(PostResidentailDataState.initial()) {
    on<PostResidentailInfo>((event, emit) async {
      try {
        final response = await residentailInfoService.residdentialInfo(
          houseOwnership: event.houseOwnership,
          housedrinkingwater: event.housedrinkingwater,
          houselandSize: event.houselandSize,
          houseroof: event.houseroof,
        );
        emit(state.copyWith(
            isLoading: false,
            isError: false,
            successorFailure: optionOf(right(response))));

        print(
            'ownership -----------------------------${response.data!.ownership}');

        print('roof -----------------------------${response.data!.roof}');
        print(
            'drinking water -----------------------------${response.data!.drinkingWater}');
        print(
            'landsize -----------------------------${response.data!.landSize}');
      } catch (e) {
        print('Error: $e'); // Add this line

        emit(state.copyWith(
            isLoading: false,
            isError: true,
            successorFailure: optionOf(
                left(MainFailure.clientFailure(message: e.toString())))));
      }
      await Future.delayed(Duration.zero);
      emit(PostResidentailDataState.initial());
    });
  }
}
