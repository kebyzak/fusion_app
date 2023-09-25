import 'package:flutter/material.dart';
import '../../../model/tournament_model.dart';
import '../table_screen.dart';

class TournamentListCard extends StatelessWidget {
  final Tournament tournament;

  const TournamentListCard({Key? key, required this.tournament})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFF1F3F41),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tournament.title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_month_rounded,
                      color: Colors.white,
                      size: 10,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      '${tournament.startDate} - ${tournament.endDate}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.people_outline_rounded,
                      color: Colors.white,
                      size: 12,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      'Команды: ${tournament.teams.length}',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => TableScreen(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
