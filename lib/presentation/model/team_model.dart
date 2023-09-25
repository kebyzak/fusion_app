import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_model.freezed.dart';
part 'team_model.g.dart';


@freezed
class Team with _$Team {
  const factory Team({
    required String name,
    required int W,
    required int D,
    required int L,
    required int points,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}