import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery/widgets/photoList_widget.dart';
import '../api/API.dart';
import '../api/PhotoCreator.dart';


class MainPage extends StatelessWidget {
  final API api = API();
  String title;

  MainPage({required this.title});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        color: Colors.grey[300],
        child: FutureBuilder <List<Photo>>(
          future: api.getPhotos(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('An error has occurred!'),
              );
            } else if (snapshot.hasData) {
              return PhotosList(photos: snapshot.data!);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
