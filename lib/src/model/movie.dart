class Movie {
  final String backdropPath;
  final int id;
  final String orginalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final int voteCount;
  final String voteAverage;

  String error;

  Movie({
    this.backdropPath,
    this.id,
    this.orginalLanguage,
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

  factory Movie.fromJson(dynamic json) {
    if (json == null) {
      return Movie();
    }

    return Movie(
      backdropPath: json['backdrop_path'],
      id: json['id'],
      orginalLanguage: json['orginall_language'],
      originalTitle: json['orignal_title'],
      overview: json['overview'],
      popularity: json['popularity'],
      posterPath: json['posterPath'],
      releaseDate: json['releaseDate'],
      title: json['title'],
      video: json['video'],
      voteAverage: json['voteAverage'].toString(),
      voteCount: json['voteCount'],
    );
  }
}
