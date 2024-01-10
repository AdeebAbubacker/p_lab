import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/ui/view_model/question1_res/question1_res_bloc.dart';

class Question1CheckBox extends StatefulWidget {
  const Question1CheckBox({super.key});

  @override
  State<Question1CheckBox> createState() => _Question1CheckBoxState();
}

class _Question1CheckBoxState extends State<Question1CheckBox> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Question1ResBloc, Question1ResState>(
      builder: (context, state) {
        return Row(
          children: [
            Checkbox(
                value: state.ownHouse,
                onChanged: (value) {
                  context.read<Question1ResBloc>().add(ToggleOwnHouseEvent());
                }),
            const Text('Own House', style: checkboxOptionStyle),
            const Spacer(),
            Checkbox(
                value: state.rentalHouse,
                onChanged: (value) {
                  context
                      .read<Question1ResBloc>()
                      .add(ToggleRentalHouseEvent());
                }),
            const Text('Rental House', style: checkboxOptionStyle),
            const Spacer(),
          ],
        );
      },
    );
  }
}
