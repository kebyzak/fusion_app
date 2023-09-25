// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tournament_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tournament _$TournamentFromJson(Map<String, dynamic> json) {
  return _Tournament.fromJson(json);
}

/// @nodoc
mixin _$Tournament {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  List<Team> get teams => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TournamentCopyWith<Tournament> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TournamentCopyWith<$Res> {
  factory $TournamentCopyWith(
          Tournament value, $Res Function(Tournament) then) =
      _$TournamentCopyWithImpl<$Res, Tournament>;
  @useResult
  $Res call(
      {int id,
      String title,
      String startDate,
      String endDate,
      List<Team> teams});
}

/// @nodoc
class _$TournamentCopyWithImpl<$Res, $Val extends Tournament>
    implements $TournamentCopyWith<$Res> {
  _$TournamentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? teams = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<Team>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TournamentCopyWith<$Res>
    implements $TournamentCopyWith<$Res> {
  factory _$$_TournamentCopyWith(
          _$_Tournament value, $Res Function(_$_Tournament) then) =
      __$$_TournamentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String startDate,
      String endDate,
      List<Team> teams});
}

/// @nodoc
class __$$_TournamentCopyWithImpl<$Res>
    extends _$TournamentCopyWithImpl<$Res, _$_Tournament>
    implements _$$_TournamentCopyWith<$Res> {
  __$$_TournamentCopyWithImpl(
      _$_Tournament _value, $Res Function(_$_Tournament) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? teams = null,
  }) {
    return _then(_$_Tournament(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      teams: null == teams
          ? _value._teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<Team>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tournament implements _Tournament {
  const _$_Tournament(
      {required this.id,
      required this.title,
      required this.startDate,
      required this.endDate,
      required final List<Team> teams})
      : _teams = teams;

  factory _$_Tournament.fromJson(Map<String, dynamic> json) =>
      _$$_TournamentFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String startDate;
  @override
  final String endDate;
  final List<Team> _teams;
  @override
  List<Team> get teams {
    if (_teams is EqualUnmodifiableListView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  @override
  String toString() {
    return 'Tournament(id: $id, title: $title, startDate: $startDate, endDate: $endDate, teams: $teams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tournament &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other._teams, _teams));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, startDate, endDate,
      const DeepCollectionEquality().hash(_teams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TournamentCopyWith<_$_Tournament> get copyWith =>
      __$$_TournamentCopyWithImpl<_$_Tournament>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TournamentToJson(
      this,
    );
  }
}

abstract class _Tournament implements Tournament {
  const factory _Tournament(
      {required final int id,
      required final String title,
      required final String startDate,
      required final String endDate,
      required final List<Team> teams}) = _$_Tournament;

  factory _Tournament.fromJson(Map<String, dynamic> json) =
      _$_Tournament.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get startDate;
  @override
  String get endDate;
  @override
  List<Team> get teams;
  @override
  @JsonKey(ignore: true)
  _$$_TournamentCopyWith<_$_Tournament> get copyWith =>
      throw _privateConstructorUsedError;
}
