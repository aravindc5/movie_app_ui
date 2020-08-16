import 'package:flutter/material.dart';

class CircularItem extends StatelessWidget {
  final String circularImageUrl;
  CircularItem(this.circularImageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      child: CircleAvatar(
        radius: 80.0,
        backgroundImage: NetworkImage(circularImageUrl),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
