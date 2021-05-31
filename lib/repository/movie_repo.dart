import 'package:flutter_app_network/model/movie_response.dart';
import 'package:flutter_app_network/remote_data_source/api_helper.dart';

class MovieRepository {
  final String _apiKey = "c1e4348817ab06296f3de003b14631e9";

  ApiHelper _helper = ApiHelper();

  Future<List<Results>> fetchMovieList() async {
    final response = await _helper.get("movie/popular?api_key=$_apiKey");
    return MovieResponse.fromJson(response).results;
  }
}