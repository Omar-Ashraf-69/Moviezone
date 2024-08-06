import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_zone/core/errors/failure.dart';
import 'package:movie_zone/core/utils/api_keys.dart';
import 'package:movie_zone/core/utils/api_service.dart';
import 'package:movie_zone/features/home/data/models/movie_model.dart';
import 'package:movie_zone/features/home/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;
  final String baseUrl = "https://api.themoviedb.org/3/movie/";
  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, MovieModel>> getDiscover() async {
    try {
      final response = await apiService.get(
        url: "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=${ApiKeys.movieKey}",
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
  Future<Either<Failure, MovieModel>> getNowPlaying() async{
    try {
      final response = await apiService.get(
        url: "$baseUrl/now_playing?api_key=${ApiKeys.movieKey}",
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
  Future<Either<Failure, MovieModel>> getPopular() async {
   try {
      final response = await apiService.get(
        url: "$baseUrl/popular?api_key=${ApiKeys.movieKey}",
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
  Future<Either<Failure, MovieModel>> getTopRated() async{
    try {
      final response = await apiService.get(
        url: "$baseUrl/top_rated?api_key=${ApiKeys.movieKey}",
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
  Future<Either<Failure, MovieModel>> getUpComing() async{
    try {
      final response = await apiService.get(
        url: "$baseUrl/upcoming?api_key=${ApiKeys.movieKey}",
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
