import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/ui/view_model/family/family_bloc.dart';

class DoYouHaveSiblings extends StatelessWidget {
  DoYouHaveSiblings({super.key});

  bool siblings = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FamilyBloc, FamilyState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Do you have any siblings',
              style: kCardContentSmallStyle,
            ),
            const Spacer(),
            Text(
              'yes',
              style: kCardContentSmallStyle,
            ),
            Checkbox(
                value: state.siblings,
                onChanged: (value) {
                  context
                      .read<FamilyBloc>()
                      .add(ForSiblings(siblings: value as bool));
                }),
            Text(
              'no',
              style: kCardContentSmallStyle,
            ),
            Checkbox(
                value: state.nosiblings,
                onChanged: (value) {
                  context
                      .read<FamilyBloc>()
                      .add(FornoSiblings(nosiblings: value as bool));
                }),
          ],
        );
      },
    );
  }
}
