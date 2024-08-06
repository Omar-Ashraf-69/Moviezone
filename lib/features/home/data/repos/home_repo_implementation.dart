import 'package:dartz/dartz.dart';
import 'package:movie_zone/core/errors/failure.dart';
import 'package:movie_zone/features/home/data/models/movie_model.dart';
import 'package:movie_zone/features/home/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo{
  @override
  Future<Either<Failure, MovieModel>> getDiscover() {
    // TODO: implement getDiscover
    throw UnimplementedError();
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