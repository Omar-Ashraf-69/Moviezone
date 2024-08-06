import 'package:dartz/dartz.dart';
import 'package:movie_zone/core/errors/failure.dart';
import 'package:movie_zone/features/home/data/models/movie_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, MovieModel>> getDiscover();
  Future<Either<Failure, MovieModel>> getNowPlaying();
  Future<Either<Failure, MovieModel>> getTopRated();
  Future<Either<Failure, MovieModel>> getPopular();
  Future<Either<Failure, MovieModel>> getUpComing();
}