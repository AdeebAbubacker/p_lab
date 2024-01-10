part of 'family_bloc.dart';

@immutable
class FamilyState {
  final bool siblings;
  final bool nosiblings;
  final List<Widget> siblingCards;
  final int numberOfSiblings;

  const FamilyState({
    required this.siblings,
    required this.nosiblings,
    this.siblingCards = const [],
    this.numberOfSiblings = 0,
  });
}





