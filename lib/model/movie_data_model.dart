class MovieDataModel {
  //data Type
  int? id;
  String? title;
  String? country;
  String? category;
  String? director;
  String? plot;
  String? poster;
  String? year;
  String? imdbRating;
// constructor
  MovieDataModel(
      {
      this.id,
      this.title,
      this.country,
      this.director,
      this.plot,
      this.poster,
      this.year,
      this.imdbRating});
  //method that assign values to respective datatype vairables
  MovieDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    country = json['country'];
    director = json['director'];
    plot = json['plot'];
    poster = json['poster'];
    year = json['year'];
    imdbRating = json['imdbRating'];
  }
}
