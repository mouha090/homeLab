import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:HomeLab/helpers/constants.dart';
import 'package:HomeLab/models/analyse_search.dart';
import 'package:HomeLab/screens/analyse_screen.dart';
import 'package:HomeLab/services/result_search_service.dart';
import 'package:HomeLab/widgets/actions_card.dart';
import 'package:HomeLab/widgets/leading.dart';
import 'package:HomeLab/widgets/menu.dart';
import 'package:HomeLab/widgets/result_widget.dart';

class ResultScreen extends StatelessWidget {
  List searchResult = ResultSeacrhService().getResultSearch();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  'Resultats Recherche',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  FontAwesomeIcons.search,
                  size: 20,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(height: 30),
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
                  ActionsCard(),
                  SizedBox(
                    height: 15,
                  ),
                  Flexible(
                    child: ListView.builder(
                      itemCount: searchResult.length,
                      itemBuilder: (context, int index) {
                        var analyse = AnalyseSearch(
                          analyseLabel: searchResult[index]['analyseLabel'],
                          labName: searchResult[index]['labName'],
                          price: searchResult[index]['price'],
                          dateLine: searchResult[index]['dateLine'],
                        );
                        return ResultWidget(
                          analyse: analyse,
                        );
                      },
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
