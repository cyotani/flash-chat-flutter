import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final Color color;
  final Function func;

  RoundButton({this.title, this.color, this.func});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        // color: animation.value,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: func,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
