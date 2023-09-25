// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tournament _$$_TournamentFromJson(Map<String, dynamic> json) =>
    _$_Tournament(
      id: json['id'] as int,
      title: json['title'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      teams: (json['teams'] as List<dynamic>)
          .map((e) => Team.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TournamentToJson(_$_Tournament instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'teams': instance.teams,
    };
