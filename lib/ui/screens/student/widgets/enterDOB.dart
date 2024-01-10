import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/ui/view_model/Dob/dob_bloc.dart';

class DOBPicker extends StatelessWidget {
  const DOBPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DobBloc(),
      child: BlocBuilder<DobBloc, DobState>(
        builder: (context, state) {
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text(
                    'Enter Date of Birth',
                    style: kCardContentStyle,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    BlocProvider.of<DobBloc>(context)
                        .add(SelectDateEvent(context: context));
                  },
                  icon: const Icon(Icons.calendar_today),
                ),
                Text(
                  state is DOBSelectedState
                      ? formatDate(state.selectedDate)
                      : '',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  String formatDate(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }
}
