import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fusion_app/presentation/model/team_model.dart';

part 'tournament_model.freezed.dart';
part 'tournament_model.g.dart';

@freezed
class Tournament with _$Tournament {
  const factory Tournament({
    required int id,
    required String title,
    required String startDate,
    required String endDate,
    required List<Team> teams,
  }) = _Tournament;

  factory Tournament.fromJson(Map<String, dynamic> json) =>
      _$TournamentFromJson(json);
}

