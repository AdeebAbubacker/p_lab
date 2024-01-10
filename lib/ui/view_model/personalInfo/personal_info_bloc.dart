import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/personal_info/personal_info.dart';
import 'package:panakj_app/core/service/personalinfo_service.dart';

part 'personal_info_event.dart';
part 'personal_info_state.dart';
part 'personal_info_bloc.freezed.dart';

class PersonalInfoBloc extends Bloc<PersonalInfoEvent, PersonalInfoState> {
  final personalinfoService = PersonalInfoService();
  PersonalInfoBloc() : super(PersonalInfoState.initial()) {
    on<PostPersonalInfo>((event, emit) async {
      try {
        final response = await personalinfoService.personalInfo(
          name: event.name,
          gender: event.gender,
          dob: event.dob,
          phone: event.phone,
          address: event.address,
          email: event.email,
          bankaccname: event.bankaccname,
          bankaccno: event.bankaccno,
          bankid: event.bankid,
          bankifsc: event.bankifsc,
        );
        emit(state.copyWith(
            isLoading: false,
            isError: false,
            successorFailure: optionOf(right(response))));
        print(
            'nameeeeeeeeeeeeeee -----------------------------${response.data!.name}');
        print('gender -----------------------------${response.data!.gender}');

        print('dob -----------------------------${response.data!.dob}');

        print('address -----------------------------${response.data!.address}');
        print(
            'phone nooooooooo -----------------------------${response.data!.phone}');

        print(
            'emailllllllllllllllll -----------------------------${response.data!.email}');

        print('bank  id -----------------------------${response.data!.bank!.bankId}');

        print(
            'bank account name -----------------------------${response.data!.bank!.bankAccName}');

        print(
            'bank account number -----------------------------${response.data!.bank!.bankAccNo}');

        print(
            'ifsc -----------------------------${response.data!.bank!.bankIfsc}');

            
      } catch (e) {
        emit(state.copyWith(
            isLoading: false,
            isError: true,
            successorFailure: optionOf(
                left(MainFailure.clientFailure(message: e.toString())))));
      }
      await Future.delayed(Duration.zero);
      emit(PersonalInfoState.initial());
    });
  }


}
