import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_zone/core/errors/failure.dart';
import 'package:movie_zone/core/utils/api_keys.dart';
import 'package:movie_zone/core/utils/api_service.dart';
import 'package:movie_zone/features/home/data/models/movie_model.dart';
import 'package:movie_zone/features/search/data/repo/search_repo.dart';

class SearchRepoImpl extends SearchRepo {
  final ApiService apiService;

  SearchRepoImpl({required this.apiService});
  final String baseUrl = "https://api.themoviedb.org/3/search/";
  @override
  Future<Either<Failure, MovieModel>> searchMovies(
      {required String query}) async {
    try {
      //https://api.themoviedb.org/3/search/movie?query=City%20of%20Lies&language=en-US&page=1&api_key=
      final response = await apiService.get(
        url:
            "${baseUrl}movie?query=$query&language=en-US&api_key=${ApiKeys.movieKey}",
      );
      return Right(MovieModel.fromJson(response));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(error: e.toString()));
    }
  }
}
