import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/ui/view_model/question3_res/question3_res_bloc.dart';

class Question3CheckBox extends StatefulWidget {
  final String option1;
  final String option2;
  final String option3;
  const Question3CheckBox({
    super.key,
    required this.option1,
    required this.option2,
    required this.option3,
  });

  @override
  State<Question3CheckBox> createState() => _Question3CheckBoxState();
}

class _Question3CheckBoxState extends State<Question3CheckBox> {
  bool option1bool = false;
  bool option2bool = false;
  bool option3bool = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Question3ResBloc, Question3ResState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                Checkbox(
                    value: state.pipewater,
                    onChanged: (value) {
                   context.read<Question3ResBloc>().add(Pipewater());  
                    }),
                Text(widget.option1, style: checkboxOptionStyle),
                Spacer(),
                Checkbox(
                    value: state.wellwater,
                    onChanged: (value) {
                        context.read<Question3ResBloc>().add(Wellwater());  
                    }),
                Text(widget.option2, style: checkboxOptionStyle),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: state.othersource,
                    onChanged: (value) {
                         context.read<Question3ResBloc>().add(Othersource());  
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
