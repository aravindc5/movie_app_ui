import 'package:flutter/material.dart';
import 'package:movieappui/data/movie_data.dart';
import 'package:movieappui/pages/movie_details_page.dart';
import 'package:movieappui/widgets/card_item.dart';
import 'package:movieappui/widgets/circular_item.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 22, 21, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            searchBar(),
            moviesCard(context),
            previews(context)
          ],
        ),
      ),
    );
  }
}

Widget header() {
  return Container(
    margin: const EdgeInsets.fromLTRB(20, 50, 20, 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Trending\nMovies & Series.',
          style: TextStyle(
              fontSize: 28,
              height: 1.5,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        CircleAvatar(
          radius: 20,
          child: const Icon(Icons.person),
        )
      ],
    ),
  );
}

Widget searchBar() {
  return Container(
    margin: const EdgeInsets.all(10),
    child: TextField(
      decoration: new InputDecoration(
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(30.0),
            ),
          ),
          filled: true,
          hintStyle: const TextStyle(color: Colors.white70, fontSize: 14),
          hintText: "Search your favorites",
          fillColor: Color.fromRGBO(138, 132, 160, 1)),
    ),
  );
}

Widget moviesCard(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.4,
    width: double.infinity,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () => navigatePage(index, context),
            child: CardItem(imageData[index]));
      },
      itemCount: imageData.length,
    ),
  );
}

navigatePage(int index, BuildContext ctx) {
  Navigator.of(ctx)
      .pushNamed(MovieDetails.routeName, arguments: {'index': index});
}

Widget previews(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
        child: Text(
          'Previews',
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.2,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CircularItem(circularImageData[index]);
          },
          itemCount: circularImageData.length,
        ),
      )
    ],
  );
}
