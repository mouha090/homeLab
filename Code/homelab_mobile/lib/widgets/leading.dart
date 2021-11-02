import 'package:HomeLab/main.dart';
import 'package:HomeLab/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LeadingWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeLab()));
      },
      child: Image.asset('images/logo3x.png'),
    );

  }
}