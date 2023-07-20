import 'package:movieapp/models/movies_model.dart';
import 'package:movieapp/repositories/movies_repository.dart';
import 'package:movieapp/services/dio_service.dart';
import 'package:movieapp/utils/api.utils.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final DioService _dioService;
  MoviesRepositoryImpl(this._dioService);

  @override
  Future<Movies> getMovies() async {
    var result = await _dioService.getDio().get(API.REQUEST_MOVIE_LIST);
    return Movies.fromJson(result.data);
  }
}
