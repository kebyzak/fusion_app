import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../presentation/model/tournament_model.dart';

class TournamentRepository {
  Future<List<Tournament>> fetchTournaments() async {
    final response = await http.get(
      Uri.parse('http://localhost:3000/tournaments'),
    );


    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Tournament.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load tournaments');
    }
  }
}

