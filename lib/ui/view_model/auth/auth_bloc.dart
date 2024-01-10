import 'package:dio/dio.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/service/auth_service.dart';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panakj_app/core/model/auth/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final _authService = AuthService();
  AuthBloc() : super(AuthState.initial()) {
    on<MyLogin>((event, emit) async {
      try {
        final response = await _authService.authuser(
            email: event.email, password: event.password);

        emit(state.copyWith(
          isLoading: false,
          isError: false,
          successorFailure: optionOf(right(response)),
        ));
        final prefs = await SharedPreferences.getInstance();
        prefs.setString('loginState', response.accessToken as String);
        // ignore: avoid_print
        print(
            'access token -----------------------------${response.accessToken}');
      } catch (e) {

        emit(state.copyWith(
          isLoading: false,
          isError: true,
          successorFailure:
              optionOf(left(MainFailure.clientFailure(message: e.toString()))),
        ));

        // ignore: avoid_print
        print('Error: ${e.toString()}');

        await Future.delayed(Duration.zero);
        emit(AuthState.initial());
      }
    });
  }
}
