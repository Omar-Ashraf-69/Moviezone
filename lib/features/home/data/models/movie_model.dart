class MovieModel {
  int? page;
  List<Movie>? results;
  int? totalPages;
  int? totalResults;

  MovieModel({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      page: json['page'],
      results: (json['results'] as List?)?.map((item) => Movie.fromJson(item)).toList(),
      totalPages: json['total_pages'],
      totalResults: json['total_results'],
    );
  }
}

class Movie {
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

  Movie({
    this.adult,
    this.image,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      adult: json['adult'],
      image: json['backdrop_path'],
      genreIds: (json['genre_ids'] as List?)?.map((item) => item as int).toList(),
      id: json['id'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      title: json['title'],
      video: json['video'],
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'],
    );
  }
}









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
// }

// class Results {
//   bool? adult;
//   String? image;
//   List<int>? genreIds;
//   int? id;
//   String? originalLanguage;
//   String? originalTitle;
//   String? overview;
//   double? popularity;
//   String? posterPath;
//   String? releaseDate;
//   String? title;
//   bool? video;
//   double? voteAverage;
//   int? voteCount;

//   Results(
//       {adult,
//       image,
//       genreIds,
//       id,
//       originalLanguage,
//       originalTitle,
//       overview,
//       popularity,
//       posterPath,
//       releaseDate,
//       title,
//       video,
//       voteAverage,
//       voteCount});

//   Results.fromJson(Map<String, dynamic> json) {
//     adult = json['results']['adult'];
//     image = json['results']['backdrop_path'];
//     genreIds = json['results']['genre_ids'].cast<int>();
//     id = json['results']['id'];
//     originalLanguage = json['results']['original_language'];
//     originalTitle = json['results']['original_title'];
//     overview = json['results']['overview'];
//     popularity = json['results']['popularity'];
//     posterPath = json['results']['poster_path'];
//     releaseDate = json['results']['release_date'];
//     title = json['results']['title'];
//     video = json['results']['video'];
//     voteAverage = json['results']['vote_average'];
//     voteCount = json['results']['vote_count'];
//   }

// }







// class MovieModel {
//   int page;
//   List<Movie> results;
//   int totalPages;
//   int totalResults;

//   MovieModel({
//     required this.page,
//     required this.results,
//     required this.totalPages,
//     required this.totalResults,
//   });

//   factory MovieModel.fromJson(Map<String, dynamic> json) {
//     final results = (json['results'] as List).map((item) => Movie.fromJson(item)).toList();

//     return MovieModel(
//       page: json['page'],
//       results: results,
//       totalPages: json['total_pages'],
//       totalResults: json['total_results'],
//     );
//   }
// }

// class Movie {
//   bool adult;
//   String image;
//   List<int> genreIds;
//   int id;
//   String originalLanguage;
//   String originalTitle;
//   String overview;
//   double popularity;
//   String posterPath;
//   String releaseDate;
//   String title;
//   bool video;
//   double voteAverage;
//   int voteCount;

//   Movie({
//     required this.adult,
//     required this.image,
//     required this.genreIds,
//     required this.id,
//     required this.originalLanguage,
//     required this.originalTitle,
//     required this.overview,
//     required this.popularity,
//     required this.posterPath,
//     required this.releaseDate,
//     required this.title,
//     required this.video,
//     required this.voteAverage,
//     required this.voteCount,
//   });

//   factory Movie.fromJson(Map<String, dynamic> json) {
//     return Movie(
//       adult: json['adult'],
//       image: json['backdrop_path'],
//       genreIds: List<int>.from(json['genre_ids']),
//       id: json['id'],
//       originalLanguage: json['original_language'],
//       originalTitle: json['original_title'],
//       overview: json['overview'],
//       popularity: json['popularity'].toDouble(),
//       posterPath: json['poster_path'],
//       releaseDate: json['release_date'],
//       title: json['title'],
//       video: json['video'],
//       voteAverage: json['vote_average'].toDouble(),
//       voteCount: json['vote_count'],
//     );
//   }
// }
