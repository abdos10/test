class Movie {
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  bool loved;
  bool watchLater;

  Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,
    this.loved = false,
    this.watchLater = false,
  });

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      id: map['id'] ?? 0, 
      title: map['title'] ?? 'No Title Available', 
      overview: map['overview'] ?? 'No Overview Available', 
      posterPath: map['poster_path'] != null
          ? 'http://image.tmdb.org/t/p/w500${map['poster_path']}'
          : 'https://via.placeholder.com/500', 
    );
  }
}
