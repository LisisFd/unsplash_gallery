import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../api/PhotoCreator.dart';


class FullScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Photo photo = ModalRoute.of(context)!.settings.arguments as Photo;
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(photo.bigPhotoUrl),
          Positioned(
            top: 20,
            child: IconButton(
                onPressed: () => Navigator.pop(context),
                alignment: Alignment.center,
                icon: const Icon(
                  Icons.arrow_back_sharp,
                  size: 70,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
