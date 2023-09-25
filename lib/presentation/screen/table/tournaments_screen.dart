import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fusion_app/presentation/bloc/table/tournaments/tournaments_bloc.dart';
import 'package:fusion_app/presentation/screen/table/widgets/tournament_listcard.dart';
import 'package:fusion_app/presentation/widgets/app_bar.dart';

class TournamentsScreen extends StatefulWidget {
  const TournamentsScreen({Key? key}) : super(key: key);

  @override
  State<TournamentsScreen> createState() => _TournamentsScreenState();
}

class _TournamentsScreenState extends State<TournamentsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final columnWidth = MediaQuery.of(context).size.width * 0.9;

    final bloc = BlocProvider.of<TournamentsBloc>(context);
    bloc.add(const TournamentsEvent.fetchTournaments());

    return BlocBuilder<TournamentsBloc, TournamentsState>(
      builder: (bloc, state) {
        return Scaffold(
          appBar: const CustomAppBar(title: 'Турнир'),
          backgroundColor: const Color(0xFF162E30),
          body: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: columnWidth),
              child: state.when(
                initial: () => const CircularProgressIndicator(),
                loading: () => const CircularProgressIndicator(),
                success: (tournaments) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      final tournament = tournaments[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: TournamentListCard(tournament: tournament),
                      );
                    },
                    itemCount: tournaments.length,
                  );
                },
                error: () => const Text(
                  'Error loading tournaments',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
