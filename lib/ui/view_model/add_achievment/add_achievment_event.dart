part of 'add_achievment_bloc.dart';

@immutable
class AddAchievmentEvent {}

class AddMoreAchievments extends AddAchievmentEvent {}


class DeleteSibling extends AddAchievmentEvent {
 final String achievmentID;

  DeleteSibling({required this.achievmentID});
}