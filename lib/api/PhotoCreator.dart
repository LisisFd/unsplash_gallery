// @dart=2.9
class Photo {
  final String title;
  final String autor;
  final String smallPhotoUrl;
  final String bigPhotoUrl;

  Photo({this.title, this.autor, this.smallPhotoUrl, this.bigPhotoUrl});

  factory Photo.fromJson(Map<String, dynamic> json){
    return Photo(title: json["description"] ?? '' ,
        autor: json["user"]["name"],
        smallPhotoUrl: json["urls"]["thumb"],
        bigPhotoUrl: json["urls"]["regular"]
    );

  }

}