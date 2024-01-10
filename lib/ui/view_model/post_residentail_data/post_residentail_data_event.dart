part of 'post_residentail_data_bloc.dart';

@freezed
class PostResidentailDataEvent with _$PostResidentailDataEvent {
  const factory PostResidentailDataEvent.started() = _Started;
  const factory PostResidentailDataEvent.postResidentailInfo({
    required String houselandSize,
    required String housedrinkingwater,
    required String houseroof,
    required String houseOwnership,
  }) = PostResidentailInfo;
}
