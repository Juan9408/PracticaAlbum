import 'package:albumdiverso/paginas/principal_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AlbumApp());
}

class AlbumApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrincipalApp(),
    );
  }
}
