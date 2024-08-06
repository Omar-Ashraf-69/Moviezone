import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_zone/core/errors/failure.dart';
import 'package:movie_zone/core/utils/api_keys.dart';
import 'package:movie_zone/core/utils/api_service.dart';
import 'package:movie_zone/features/home/data/models/movie_model.dart';
import 'package:movie_zone/features/home/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;
  final String baseUrl = "https://api.themoviedb.org/3/";

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, MovieModel>> getDiscover() async {
    try {
      final response = await apiService.get(
        url: "${baseUrl}discover/movie?sort_by=popularity.desc&api_key=${ApiKeys.movieKey}",
      );
      
      return Right(MovieModel.fromJson(response));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(error: e.toString()));
    }
  }

  @override
  Future<Either<Failure, MovieModel>> getNowPlaying() {
    // TODO: implement getNowPlaying
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, MovieModel>> getPopular() {
    // TODO: implement getPopular
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, MovieModel>> getTopRated() {
    // TODO: implement getTopRated
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, MovieModel>> getUpComing() {
    // TODO: implement getUpComing
    throw UnimplementedError();
  }
}
