part of 'tournaments_bloc.dart';

@freezed
class TournamentsState with _$TournamentsState {
  const factory TournamentsState.initial() = _Initial;
  const factory TournamentsState.loading() = _Loading;
  const factory TournamentsState.success(List<Tournament> tournaments) = _Success;
  const factory TournamentsState.error() = _Error;
}