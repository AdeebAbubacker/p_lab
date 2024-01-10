part of 'family_info_bloc.dart';

@freezed
class FamilyInfoEvent with _$FamilyInfoEvent {
  const factory FamilyInfoEvent.started() = _Started;
  const factory FamilyInfoEvent.postFamilyInfo({
    final String? fathername,
    final int? falive,
    final int? fdisabled,
    final int? focupation,
    final int? fincome,
    final String? frelation,
    final String? mothername,
    final int? malive,
    final int? mdisabled,
    final int? mocupation,
    final int? mincome,
    final String? mrelation,
    final String? guardianname,
    final int? galive,
    final int? gdisabled,
    final int? gocupation,
    final int? gincome,
    final String? grelation,
    final List<SiblingData>? siblings,
  }) = PostFamilyInfo;
}
