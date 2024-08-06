import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_zone/core/utils/api_service.dart';
import 'package:movie_zone/features/home/data/repos/home_repo_implementation.dart';

final getIt = GetIt.instance;

void setupGetIt() {
Dio setUpDio(){
    final dio = Dio();
     dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
    return  dio;
  }

  getIt.registerLazySingleton<ApiService>(
    () => ApiService(setUpDio()),
  );
  getIt.registerLazySingleton<HomeRepoImpl>(
    () => HomeRepoImpl(apiService: getIt<ApiService>()),
  );
  
  
}
