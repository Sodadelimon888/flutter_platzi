import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(Object context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people.jpg", "Yasiris Youl", "1 review 10 photos",
            "Incredible"),
        Review("assets/img/people.jpg", "Brigit Suriana", "1 review 10 photos",
            "Incredible"),
        Review("assets/img/people.jpg", "Camil Siur", "1 review 10 photos",
            "Incredible")
      ],
    );
  }
}
