import 'package:dartz/dartz.dart';
import 'package:movie_zone/core/errors/failure.dart';
import 'package:movie_zone/features/home/data/models/movie_model.dart';

abstract class SearchRepo {
  Future<Either<Failure, MovieModel>> searchMovies({required String query});
}