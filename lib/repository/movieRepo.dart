import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movieapp/moviemodul.dart';
import 'dart:developer';

class MovieRepo {
  static Future<List<Movie>> fetchMovies(String endpoint) async {
    const String _apiKey = 'd61afef58d297e17ca69d08f3b26a5de';
    List<Movie> movies = [];
    int pages = 2;
  //git committtt
    try {
      for (int page = 1; page <= pages; page++) {
        var response = await http.get(
          Uri.parse(
            'https://api.themoviedb.org/3/movie/$endpoint?api_key=$_apiKey&language=en-US&page=$page',
          ),
        );

        if (response.statusCode == 200) {
          var data = jsonDecode(response.body);
          List<dynamic> results = data['results'];

          // Log the response to debug any issues
          log('Response data: $data');

          movies.addAll(results.map((m) => Movie.fromMap(m)).toList());
        } else {
          throw Exception('Failed to load movies');
        }
      }
    } catch (e) {
      log('Error fetching movies: $e'); // Log the error for debugging
      throw Exception('Error fetching movies: $e');
    }

    return movies;
  }
}
