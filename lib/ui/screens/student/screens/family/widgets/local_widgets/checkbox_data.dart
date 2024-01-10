// // checkbox widget
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/ui/view_model/checkboxfirst/checkboxfirst_bloc.dart';
import 'package:panakj_app/ui/view_model/checkboxsec/checkboxsec_bloc.dart';
import 'package:panakj_app/ui/view_model/checkboxthird/checkboxthird_bloc.dart';

class CheckBoxData1 extends StatelessWidget {
  const CheckBoxData1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckboxfirstBloc, CheckboxfirstState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                Text(
                  'Alive',
                  style: kCardContentStyle,
                ),
                const Spacer(),
                Checkbox(
                  value: context.read<CheckboxfirstBloc>().state.alive,
                  onChanged: (value) {
                    context.read<CheckboxfirstBloc>().add(
                          const CheckboxfirstEvent.togglealive(),
                        );
                  },
                ),
                Checkbox(
                  value: context.read<CheckboxfirstBloc>().state.notalive,
                  onChanged: (value) {
                    context.read<CheckboxfirstBloc>().add(
                          const CheckboxfirstEvent.togglenotalive(),
                        );
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Disabled/bedridden',
                  style: kCardContentStyle,
                ),
                const Spacer(),
                Checkbox(
                  value: context.read<CheckboxfirstBloc>().state.disabled,
                  onChanged: (value) {
                    context.read<CheckboxfirstBloc>().add(
                          const CheckboxfirstEvent.togglebedridden(),
                        );
                  },
                ),
                Checkbox(
                  value: context.read<CheckboxfirstBloc>().state.notdisabled,
                  onChanged: (value) {
                    context.read<CheckboxfirstBloc>().add(
                          const CheckboxfirstEvent.togglenotbedridden(),
                        );
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class CheckBoxData2 extends StatelessWidget {
  const CheckBoxData2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckboxsecBloc, CheckboxsecState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                Text(
                  'Alive',
                  style: kCardContentStyle,
                ),
                const Spacer(),
                Checkbox(
                  value: context.read<CheckboxsecBloc>().state.alive,
                  onChanged: (value) {
                    context.read<CheckboxsecBloc>().add(
                          const CheckboxsecEvent.togglealive(),
                        );
                  },
                ),
                Checkbox(
                  value: context.read<CheckboxsecBloc>().state.notalive,
                  onChanged: (value) {
                    context.read<CheckboxsecBloc>().add(
                          const CheckboxsecEvent.togglenotalive(),
                        );
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Disabled/bedridden',
                  style: kCardContentStyle,
                ),
                const Spacer(),
                Checkbox(
                  value: context.read<CheckboxsecBloc>().state.disabled,
                  onChanged: (value) {
                    context.read<CheckboxsecBloc>().add(
                          const CheckboxsecEvent.togglebedridden(),
                        );
                  },
                ),
                Checkbox(
                  value: context.read<CheckboxsecBloc>().state.notdisabled,
                  onChanged: (value) {
                    context.read<CheckboxsecBloc>().add(
                          const CheckboxsecEvent.togglenotbedridden(),
                        );
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class CheckBoxData3 extends StatelessWidget {
  const CheckBoxData3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckboxthirdBloc, CheckboxthirdState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                Text(
                  'Alive',
                  style: kCardContentStyle,
                ),
                const Spacer(),
                Checkbox(
                  value: context.read<CheckboxthirdBloc>().state.alive,
                  onChanged: (value) {
                    context.read<CheckboxthirdBloc>().add(
                          const CheckboxthirdEvent.togglealive(),
                        );
                  },
                ),
                Checkbox(
                  value: context.read<CheckboxthirdBloc>().state.notalive,
                  onChanged: (value) {
                    context.read<CheckboxthirdBloc>().add(
                          const CheckboxthirdEvent.togglenotalive(),
                        );
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Disabled/bedridden',
                  style: kCardContentStyle,
                ),
                const Spacer(),
                Checkbox(
                  value: context.read<CheckboxthirdBloc>().state.disabled,
                  onChanged: (value) {
                    context
                        .read<CheckboxthirdBloc>()
                        .add(const CheckboxthirdEvent.togglebedridden());
                  },
                ),
                Checkbox(
                  value: context.read<CheckboxthirdBloc>().state.notdisabled,
                  onChanged: (value) {
                    context.read<CheckboxthirdBloc>().add(
                          const CheckboxthirdEvent.togglenotbedridden(),
                        );
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
