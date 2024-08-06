// class MovieModel {
//   int? page;
//   List<Results>? results;

//   MovieModel({page, results,});

//   MovieModel.fromJson(Map<String, dynamic> json) {
//     page = json['page'];
//     if (json['results'] != null) {
//       results = <Results>[];
//       json['results'].forEach((v) {
//         results!.add( Results.fromJson(v));
//       });
//     }
   
//   }
//}

class MovieModel {
  bool? adult;
  String? image;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  MovieModel(
      {adult,
      image,
      genreIds,
      id,
      originalLanguage,
      originalTitle,
      overview,
      popularity,
      posterPath,
      releaseDate,
      title,
      video,
      voteAverage,
      voteCount});

  MovieModel.fromJson(Map<String, dynamic> json) {
    adult = json['results']['adult'];
    image = json['results']['backdrop_path'];
    genreIds = json['results']['genre_ids'].cast<int>();
    id = json['results']['id'];
    originalLanguage = json['results']['original_language'];
    originalTitle = json['results']['original_title'];
    overview = json['results']['overview'];
    popularity = json['results']['popularity'];
    posterPath = json['results']['poster_path'];
    releaseDate = json['results']['release_date'];
    title = json['results']['title'];
    video = json['results']['video'];
    voteAverage = json['results']['vote_average'];
    voteCount = json['results']['vote_count'];
  }

}
