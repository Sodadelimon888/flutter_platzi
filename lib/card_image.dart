import 'package:flutter/material.dart';
import 'floatting_action_button.dart';

class CardImage extends StatelessWidget {
  //imagen
  String pahtImage = "assets/img/river.jpg";
  //constructor
  CardImage(this.pahtImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //widget tarjeta
    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(top: 80.0, left: 20.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pahtImage)),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black, blurRadius: 15.0, offset: Offset(0.0, 7.0))
          ]),
    );
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[card, FloatingActionButtonYellow()],
    );
  }
}
