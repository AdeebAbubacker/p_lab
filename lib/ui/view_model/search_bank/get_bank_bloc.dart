import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:panakj_app/core/db/adapters/bank_adapter/bank_adapter.dart';
import 'package:panakj_app/core/model/drop_down_values/bank.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/search_bank/datum.dart';
import 'package:panakj_app/core/model/search_bank/search_bank.dart';
import 'package:panakj_app/core/service/bank_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_bank_event.dart';
part 'get_bank_state.dart';
part 'get_bank_bloc.freezed.dart';

class GetBankBloc extends Bloc<GetBankEvent, GetBankState> {
  final _bankController = StreamController<List<BankDB>>.broadcast();
  final _updateStreamController = StreamController<bool>();
  final _getbankservice = BankService();
  GetBankBloc() : super(GetBankState.initial()) {
    on<GetBankList>(
      (event, emit) async {
        try {
          final response =
              await _getbankservice.getBank(search: event.bankQuery);
          storeDataInHive(response.data!.toList());
          print(
              'newly stored value s are ---------------------------------------------------------+++++${storeDataInHive(response.data!.toList())}');
          emit(GetBankState(
            isLoading: false,
            isError: false,
            bank: response,
            successorFailure: optionOf(right(response)),
          ));
          print(response.data!.length);
          // ignore: avoid_print

          // print(
          //     'my respone is ----------- ${response.data!.map((e) => e.)}');
        } catch (e) {
          emit(GetBankState(
            isLoading: false,
            isError: true,
            bank: SearchBank(),
            successorFailure: optionOf(
                left(MainFailure.clientFailure(message: e.toString()))),
          ));
        }
      },
    );
  }
  Future<void> storeDataInHive(List<Datum> data) async {
    final bankBox = await Hive.openBox<BankDB>('bankBox');

    // Store the new data in Hive
    data.forEach((bank) {
      var existingBank = bankBox.get(bank.id);

      if (existingBank != null) {
        // If the object exists, update it
         existingBank.name = bank.name!; 
        
        bankBox.put(bank.id, existingBank);
      } else {
        // If the object doesn't exist, add it
        bankBox.put(
          bank.id,
          BankDB(
            id: bank.id as int,
            name: bank.name as String,
            deletedAt: 'null',
          ),
        );
      }
    });
         // Notify listeners about the state change
    _updateStreamController.add(true);
    _bankController.add(bankBox.values.toList());
  }
}
