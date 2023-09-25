part of 'tournaments_bloc.dart';

@freezed
class TournamentsEvent with _$TournamentsEvent {
  const factory TournamentsEvent.start() = _startTournaments;
  const factory TournamentsEvent.fetchTournaments() = _fetchTournaments;
}