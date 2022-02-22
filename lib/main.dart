import 'package:flutter/material.dart';
import 'package:gallery/widgets/photoViewer_widget.dart';

import 'widgets/fullScreen_image.dart';


void main() => runApp(Gallery());

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Gallery';
    return MaterialApp(
      title: appTitle,
      routes: {
        '/' : (context) => MainPage(title: appTitle),
        '/full_screen' :(context) => FullScreenPage(),
      },
    );
  }
}




