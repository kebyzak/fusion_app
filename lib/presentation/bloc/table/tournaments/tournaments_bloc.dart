import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/repository/tournaments_repository.dart';
import '../../../model/tournament_model.dart';

part 'tournaments_bloc.freezed.dart';
part 'tournaments_state.dart';
part 'tournaments_event.dart';

class TournamentsBloc extends Bloc<TournamentsEvent, TournamentsState> {
  TournamentsBloc() : super(const TournamentsState.initial()) {
    on<_fetchTournaments>((event, emit) async {
      emit(const TournamentsState.loading());
      try {
        final tournaments = await TournamentRepository().fetchTournaments();
        emit(TournamentsState.success(tournaments));
      } catch (e) {
        emit(const TournamentsState.error());
      }
    });

    on<_startTournaments>((event, emit) async {
      await Future.delayed(const Duration(milliseconds: 2000));
      emit(const TournamentsState.initial());
    });
  }
}
