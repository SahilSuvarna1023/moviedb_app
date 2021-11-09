import 'package:dio/dio.dart';
import 'package:movieApp/src/model/movie.dart';

class ApiService {
  final Dio _dio = Dio();

  final String baseUrl = "https://api.themoviedb.org/3";
  final String apiKey = "cd221755f2af24903435d90e9b1f237c";

  Future<List<Movie>> getNowPlayingMovie() async {
    try {
      print('Api call');
      final url = '$baseUrl/movie/now_playing?$apiKey';
      final response = await _dio.get(url);
      var movies = response.data['results'] as List;
      List<Movie> movieList = movies.map((m) => Movie.fromJson(m)).toList();
      return movieList;
    } catch (error, stacktrace) {
      throw Exception(
          'Exception accoured: $error with stacktrace: $stacktrace');
    }
  }
}
