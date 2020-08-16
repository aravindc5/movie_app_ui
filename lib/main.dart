import 'package:flutter/material.dart';
import 'package:movieappui/pages/home_page.dart';
import 'package:movieappui/pages/movie_details_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        MovieDetails.routeName: (context) => MovieDetails(),
      },
    );
  }
}
