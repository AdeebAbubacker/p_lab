import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/ui/view_model/question2_res/question2_res_bloc.dart';

class Question2CheckBox extends StatefulWidget {
  final String option1;
  final String option2;
  final String option3;
  const Question2CheckBox({
    super.key,
    required this.option1,
    required this.option2,
    required this.option3,
  });

  @override
  State<Question2CheckBox> createState() => _CheckBoxTripletState();
}

class _CheckBoxTripletState extends State<Question2CheckBox> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Question2ResBloc , Question2ResState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                Checkbox(
                    value: state.sheet,
                    onChanged: (value) {
                      context.read<Question2ResBloc>().add(Sheet());
                    }),
                Text(widget.option1, style: checkboxOptionStyle),
                Spacer(),
                Checkbox(
                    value: state.concrete,
                    onChanged: (value) {
                        context.read<Question2ResBloc>().add(Concrete());
                    }),
                Text(widget.option2, style: checkboxOptionStyle),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: state.Tilled,
                    onChanged: (value) {
                     context.read<Question2ResBloc>().add(Tilled());
                    }),
                Text(widget.option3, style: checkboxOptionStyle),
              ],
            )
          ],
        );
      },
    );
  }
}
