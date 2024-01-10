part of 'gallery_bloc.dart';

@freezed
class GalleryState with _$GalleryState {
   factory GalleryState.initial() {
    return GalleryState(isLoading: false, isError: false, gallery: Gallery(), successorFailure: None());
  }
   factory GalleryState({
     required bool isLoading,
    required bool isError,
    required Gallery gallery,
    required Option<Either<MainFailure, Gallery>> successorFailure,
  }) = _GalleryState;
}

