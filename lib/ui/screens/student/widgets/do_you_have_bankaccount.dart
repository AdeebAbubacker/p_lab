import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/ui/screens/student/widgets/vericalLine.dart';
import 'package:panakj_app/ui/view_model/students_app_form/students_app_form_bloc.dart';

class DoYouHaveBankAcc extends StatelessWidget {
  const DoYouHaveBankAcc({super.key});

  @override
  Widget build(BuildContext context) {
 
    return BlocBuilder<StudentsAppFormBloc, StudentsAppFormState>(
        builder: (context, state) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              'Do you have bank account',
              style: kCardContentSmallStyle,
            ),
          ),
          const Spacer(),
          Checkbox(
              value: state.forBankAccountholder,
              onChanged: (value) {
                context.read<StudentsAppFormBloc>().add(
                    DoYouHaveBankAccEvent(forBankAccountholder: value as bool));
              }),
          Text(
            'yes',
            style: kCardContentSmallStyle,
          ),
          const VerticalLine(),
          Checkbox(
              value: state.forNoAccountUsers,
              onChanged: (value) {
                context
                    .read<StudentsAppFormBloc>()
                    .add(ForNoAccBankAccEvent(value as bool));
              }),
          Text(
            'no',
            style: kCardContentSmallStyle,
          ),
        ],
      );
    });
  }
}
