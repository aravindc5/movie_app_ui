import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String imageUrl;
  CardItem(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Image.network(
        imageUrl,
        fit: BoxFit.fill,
      ),
    );
  }
}
