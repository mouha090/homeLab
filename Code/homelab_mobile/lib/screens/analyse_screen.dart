import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:HomeLab/helpers/constants.dart';
import 'package:HomeLab/widgets/actions_card.dart';
import 'package:HomeLab/widgets/leading.dart';
import 'package:HomeLab/widgets/menu.dart';

class AnalyseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 30,
        leading: LeadingWidget(),
        actions: <Widget>[MenuWidget()],
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
                  'Analyse',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  FontAwesomeIcons.medkit,
                  size: 30,
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
                              Expanded(
                                flex: 3,
                                child: Container(
                                  // color: Colors.red,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Renseignez les informations de votre analyse',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 5.0,
                                                  right: 5.0,
                                                ),
                                                child: TextField(
                                                  onChanged: (value) {},
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        borderSide: BorderSide(
                                                            style: BorderStyle
                                                                .none)),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    focusColor: K_MAIN_COLOR,
                                                    prefixIcon: Icon(
                                                      FontAwesomeIcons.vial,
                                                      color: K_MAIN_COLOR,
                                                    ),
                                                    hintText:
                                                        'Intitulé de votre analyse',
                                                    hintStyle: TextStyle(
                                                        color: K_MAIN_COLOR,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13),
                                                    hoverColor: Colors.red,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 5.0,
                                                  right: 5.0,
                                                  // top: 45.0,
                                                  bottom: 0,
                                                ),
                                                child: TextField(
                                                  onChanged: (value) {},
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        borderSide: BorderSide(
                                                            style: BorderStyle
                                                                .none)),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    focusColor: K_MAIN_COLOR,
                                                    prefixIcon: Icon(
                                                      FontAwesomeIcons.hospital,
                                                      color: K_MAIN_COLOR,
                                                    ),
                                                    hintText: 'Nom Hopital',
                                                    hintStyle: TextStyle(
                                                        color: K_MAIN_COLOR,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13),
                                                    hoverColor: Colors.red,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 60, vertical: 25),
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
                                            'Soumettre',
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
