import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/news/news.dart';
import 'package:panakj_app/core/service/news_service.dart';

part 'get_news_event.dart';
part 'get_news_state.dart';
part 'get_news_bloc.freezed.dart';

class GetNewsBloc extends Bloc<GetNewsEvent, GetNewsState> {
  final newsservice = NewsSerivice();
  GetNewsBloc() : super(GetNewsState.initial()) {
    on<GetNews>((event, emit) async{
      try {
        final response = await newsservice.GetNews();
        emit(GetNewsState(
          isLoading: false,
          isError: false,
          news: response,
          successorFailure: optionOf(right(response)),
        ));
        // ignore: avoid_print
      } catch (e) {
        emit(GetNewsState(
          isLoading: false,
          isError: true,
          news: News(),
          successorFailure:
              optionOf(left(MainFailure.clientFailure(message: e.toString()))),
        ));
      }
    });
  }
}

