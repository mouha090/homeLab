import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:HomeLab/helpers/constants.dart';
import 'package:HomeLab/models/analyse_search.dart';
import 'package:HomeLab/widgets/actions_card.dart';
import 'package:HomeLab/widgets/leading.dart';
import 'package:HomeLab/widgets/menu.dart';

class DetailsScreen extends StatelessWidget {
  final AnalyseSearch analyse;
  DetailsScreen({this.analyse});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: LeadingWidget(),
        actions: <Widget>[
          MenuWidget(),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20, top: 30),
            child: Row(
              children: <Widget>[
                Text(
                  'Details Analyse',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  FontAwesomeIcons.infoCircle,
                  size: 25,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(height: 50),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: ActionsCard(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color: K_MAIN_COLOR,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 30, right: 20, bottom: 20),
                          child: Column(
                            children: <Widget>[
                              Container(
                                // color: Colors.red,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Les détails de l\'analyse :',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ),
                              
                              Expanded(
                                flex: 4,
                                child: Container(
                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              'Nom Analyse',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            SizedBox(height:3),
                                            Text(
                                              analyse.analyseLabel,
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              'Laboratoire',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            SizedBox(height:3),
                                            Text(
                                              analyse.labName,
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              'Coût',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            SizedBox(height:3),
                                            Text(
                                              '${analyse.price.toString()} FCFA',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Column(
                                         
                                          children: <Widget>[
                                            Text(
                                              'Delais de livraison',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            SizedBox(height:3),
                                            Text(
                                              '${analyse.dateLine.toString()} jour(s)',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                                  Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 60, vertical: 20),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: K_ACTION_CARD_COLOR),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Valider',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            FontAwesomeIcons.checkDouble,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
