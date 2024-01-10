part of 'get_news_bloc.dart';

@freezed
class GetNewsState with _$GetNewsState {
  
   factory GetNewsState.initial() {
    return GetNewsState(isLoading: false, isError: false, news: News(), successorFailure: None());
  }
  factory GetNewsState({
     required bool isLoading,
    required bool isError,
    required News news,
    required Option<Either<MainFailure, News>> successorFailure,
  }) = _GetNewsState;
}



