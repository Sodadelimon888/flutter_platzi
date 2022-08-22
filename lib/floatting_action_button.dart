import 'package:flutter/material.dart';

class FloatingActionButtonYellow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonYellow();
  }
}

class _FloatingActionButtonYellow extends State<FloatingActionButtonYellow> {
  bool _isFavorited = true;

  void onPressedFav() {
    Scaffold.of(context).showSnackBar(SnackBar(
        content: _isFavorited
            ? Text("Agregado a tus favoritos")
            : Text("Quitaste de tus favoritos")));
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Colors.amberAccent,
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(_isFavorited ? Icons.favorite_border : Icons.favorite),
    );
  }
}
