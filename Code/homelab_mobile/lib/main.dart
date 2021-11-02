import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:HomeLab/screens/analyse_screen.dart';
import 'package:HomeLab/screens/home_screen.dart';
import 'package:HomeLab/screens/resultat_screen.dart';
import 'package:HomeLab/widgets/leading.dart';
import 'package:HomeLab/widgets/menu.dart';

void main() => runApp(HomeLab());

class HomeLab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      routes: {
        '/analyse' : (context) => AnalyseScreen(),
        '/search-results' : (context) => ResultScreen()
      },
      theme: ThemeData(
        primaryColor: Color(0xFF626FDD),
        appBarTheme: AppBarTheme(color: Color(0xFF626FDD), elevation: 0),
        scaffoldBackgroundColor: Color(0xFF626FDD),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white, fontFamily: 'Open Sans'),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 30,
          leading: LeadingWidget(),
          actions: <Widget>[
            MenuWidget()
          ],
        ),
        body: HomeScreen(),
      ),
    );
  }
}
