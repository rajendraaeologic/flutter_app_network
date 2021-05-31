class MovieResponse {
  int _page;
  List<Results> _results;
  int _totalPages;
  int _totalResults;

  int get page => _page;
  List<Results> get results => _results;
  int get totalPages => _totalPages;
  int get totalResults => _totalResults;

  MovieResponse({
      int page, 
      List<Results> results, 
      int totalPages, 
      int totalResults}){
    _page = page;
    _results = results;
    _totalPages = totalPages;
    _totalResults = totalResults;
}

  MovieResponse.fromJson(dynamic json) {
    _page = json["page"];
    if (json["results"] != null) {
      _results = [];
      json["results"].forEach((v) {
        _results.add(Results.fromJson(v));
      });
    }
    _totalPages = json["total_pages"];
    _totalResults = json["total_results"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["page"] = _page;
    if (_results != null) {
      map["results"] = _results.map((v) => v.toJson()).toList();
    }
    map["total_pages"] = _totalPages;
    map["total_results"] = _totalResults;
    return map;
  }

}

/// adult : false
/// backdrop_path : "/wwFBRyekDcKXJwP0mImRJjAnudL.jpg"
/// genre_ids : [27]
/// id : 632357
/// original_language : "en"
/// original_title : "The Unholy"
/// overview : "Alice, a young hearing-impaired girl who, after a supposed visitation from the Virgin Mary, is inexplicably able to hear, speak and heal the sick. As word spreads and people from near and far flock to witness her miracles, a disgraced journalist hoping to revive his career visits the small New England town to investigate. When terrifying events begin to happen all around, he starts to question if these phenomena are the works of the Virgin Mary or something much more sinister."
/// popularity : 6600.217
/// poster_path : "/6wxfWZxQcuv2QgxIQKj0eYTdKTv.jpg"
/// release_date : "2021-03-31"
/// title : "The Unholy"
/// video : false
/// vote_average : 7.1
/// vote_count : 668

class Results {
  bool _adult;
  String _backdropPath;
  List<int> _genreIds;
  int _id;
  String _originalLanguage;
  String _originalTitle;
  String _overview;
  double _popularity;
  String _posterPath;
  String _releaseDate;
  String _title;
  bool _video;
  var _voteAverage;
  int _voteCount;

  bool get adult => _adult;
  String get backdropPath => _backdropPath;
  List<int> get genreIds => _genreIds;
  int get id => _id;
  String get originalLanguage => _originalLanguage;
  String get originalTitle => _originalTitle;
  String get overview => _overview;
  double get popularity => _popularity;
  String get posterPath => _posterPath;
  String get releaseDate => _releaseDate;
  String get title => _title;
  bool get video => _video;
  double get voteAverage => _voteAverage;
  int get voteCount => _voteCount;

  Results({
      bool adult, 
      String backdropPath, 
      List<int> genreIds, 
      int id, 
      String originalLanguage, 
      String originalTitle, 
      String overview, 
      double popularity, 
      String posterPath, 
      String releaseDate, 
      String title, 
      bool video, 
      var voteAverage,
      int voteCount}){
    _adult = adult;
    _backdropPath = backdropPath;
    _genreIds = genreIds;
    _id = id;
    _originalLanguage = originalLanguage;
    _originalTitle = originalTitle;
    _overview = overview;
    _popularity = popularity;
    _posterPath = posterPath;
    _releaseDate = releaseDate;
    _title = title;
    _video = video;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
}

  Results.fromJson(dynamic json) {
    _adult = json["adult"];
    _backdropPath = json["backdrop_path"];
    _genreIds = json["genre_ids"] != null ? json["genre_ids"].cast<int>() : [];
    _id = json["id"];
    _originalLanguage = json["original_language"];
    _originalTitle = json["original_title"];
    _overview = json["overview"];
    _popularity = json["popularity"];
    _posterPath = json["poster_path"];
    _releaseDate = json["release_date"];
    _title = json["title"];
    _video = json["video"];
    _voteAverage = json["vote_average"];
    _voteCount = json["vote_count"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["adult"] = _adult;
    map["backdrop_path"] = _backdropPath;
    map["genre_ids"] = _genreIds;
    map["id"] = _id;
    map["original_language"] = _originalLanguage;
    map["original_title"] = _originalTitle;
    map["overview"] = _overview;
    map["popularity"] = _popularity;
    map["poster_path"] = _posterPath;
    map["release_date"] = _releaseDate;
    map["title"] = _title;
    map["video"] = _video;
    map["vote_average"] = _voteAverage;
    map["vote_count"] = _voteCount;
    return map;
  }

}