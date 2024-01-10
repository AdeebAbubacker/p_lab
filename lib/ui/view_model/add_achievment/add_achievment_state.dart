part of 'add_achievment_bloc.dart';

@immutable
class AddAchievmentState {
  final List<Widget> achievmentcards;
  final int numberofachievment;

  const AddAchievmentState(
      {required this.achievmentcards, this.numberofachievment = 0});
}
