// @dart=2.9
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'PhotoCreator.dart';


class API {
  final String URL = 'https://api.unsplash.com/photos/?client_id=IMPljBAobF3VbiqJQw5zk64XWseEpfEbBWLUaOWRNGU';

  Future<List<Photo>> getPhotos() async {
    final response = await http.get(Uri.parse(URL)).then((response)=>_parsePhotos(response.body));
    return response;
  }

  List<Photo> _parsePhotos(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
  }


}
