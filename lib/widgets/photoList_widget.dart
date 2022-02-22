import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../api/PhotoCreator.dart';

class PhotosList extends StatelessWidget {
  final List<Photo> photos;

  PhotosList({required this.photos});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      physics: BouncingScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 10,
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 10,
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child: Text(
                    photos[index].autor,
                    style: TextStyle(fontSize: 15,fontFamily: 'NotoSans',color: Colors.grey),
                  )),
              Container(
                padding: EdgeInsets.all(5),
                child: InkWell(
                  onTap: ()=> Navigator.pushNamed(context,'/full_screen',arguments:photos[index]),
                  child: Image.network(
                    photos[index].smallPhotoUrl,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.all(5.0),
                child: Text(
                  photos[index].title,
                  style: TextStyle(fontSize: 16,fontFamily: 'NotoSans',),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
