import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:HomeLab/helpers/constants.dart';
import 'package:HomeLab/models/analyse_search.dart';
import 'package:HomeLab/screens/details_screen.dart';

class ResultWidget extends StatelessWidget {
  final AnalyseSearch analyse;

  ResultWidget({this.analyse});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      child: Container(
        height: 120,
        child: Card(
          elevation: 35,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/hospital.png'),
              Expanded(
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                analyse.labName,
                                overflow: TextOverflow.fade,
                                maxLines: 1,
                                softWrap: false,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailsScreen(analyse: analyse),
                                  ),
                                );
                              },
                              child: Icon(
                                FontAwesomeIcons.arrowCircleRight,
                                color: K_ACTION_CARD_COLOR,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Expanded(
                          child: Text(
                            analyse.analyseLabel,
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black38,
                            ),
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            softWrap: false,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '${analyse.price.toString()} FCFA',
                              style: TextStyle(
                                  color: K_ACTION_CARD_COLOR,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            // Text(
                            //   dateLine.toString(),
                            //   style: TextStyle(
                            //       color: K_ACTION_CARD_COLOR,
                            //       fontSize: 20,
                            //       fontWeight: FontWeight.bold),
                            // ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
