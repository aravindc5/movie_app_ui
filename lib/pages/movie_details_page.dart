import 'package:flutter/material.dart';
import 'package:movieappui/data/movie_data.dart';
import 'package:movieappui/widgets/card_item.dart';

class MovieDetails extends StatefulWidget {
  static const routeName = '/movies_details_page';

  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  int index;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, int>;
    index = routeArgs['index'];
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 22, 21, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.4,
                child: Image.network(
                  detailsImage[index],
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      detailsTitle[index],
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 23,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      movieDescription[index],
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      child: FlatButton(
                        child: Text('Play'),
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Also Watch',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    moviesCard(context)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget moviesCard(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.4,
    width: double.infinity,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return CardItem(circularImageData[index]);
      },
      itemCount: circularImageData.length,
    ),
  );
}
