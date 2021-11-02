import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: null,
      child: Icon(
        Icons.menu,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}
