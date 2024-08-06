import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_zone/core/utils/api_service.dart';
import 'package:movie_zone/features/home/data/repos/home_repo_implementation.dart';
import 'package:movie_zone/features/search/data/repo/search_repo_impl.dart';

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
  getIt.registerLazySingleton<SearchRepoImpl>(
    () => SearchRepoImpl(apiService: getIt<ApiService>()),
  );
  
  
}
