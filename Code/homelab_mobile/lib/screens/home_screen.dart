import 'package:flutter/material.dart';
import 'package:HomeLab/helpers/constants.dart';
import 'package:HomeLab/widgets/actions_card.dart';

class HomeScreen extends StatefulWidget {
  String analyse;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 10, top: 20),
          child: Text(
            'Bienvenu à HomeLab',
            style: TextStyle(fontSize: 30),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding:
              EdgeInsets.only(left: 30.0, right: 30.0, top: 35.0, bottom: 0),
          child: TextField(
            onChanged: (value) {
              setState(() {
                widget.analyse = value;
              });
            },
            style: TextStyle(
              fontSize: 20,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(style: BorderStyle.none)),
              filled: true,
              fillColor: Colors.white,
              focusColor: K_MAIN_COLOR,
              prefixIcon: Icon(
                Icons.search,
                color: K_MAIN_COLOR,
              ),
              hintText: 'Tapez votre analyse',
              hintStyle: TextStyle(
                  color: K_MAIN_COLOR,
                  fontWeight: FontWeight.normal,
                  fontSize: 13),
              hoverColor: Colors.red,
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: K_MAIN_COLOR,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Restez chez vous',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Portez votre masque, lavez vous les mains et respectez les distances sociales.',
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      )),
                      Expanded(
                        child: Image.asset(
                          'images/corona.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Que voulez-vous faire ? ',
                            style: TextStyle(
                              color: K_MAIN_COLOR,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          ActionsCard()
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 10,
                  ),
                )
              ],
            ),

            // color: Colors.white,
          ),
        ),
      ],
    );
  }
}
