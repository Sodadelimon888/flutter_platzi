import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Review extends StatelessWidget {
  //variable para la imagen
  String photoPath = "asets/img/people.jpg";
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "It's amazing";

  Review(this.photoPath, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );

    //informacion del usuario
    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );

    //nombre de usuario
    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: 17.0),
      ),
    );

    //wigget detalles de usuario
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    //widgget para la foto
    final photo = Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(photoPath)),
        ));

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
