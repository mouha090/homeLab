import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:HomeLab/widgets/single_card_action.dart';

class ActionsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    handeAnalyse() {
      Navigator.pushNamed(context, '/analyse');
    }

    handleResults() {
      Navigator.pushNamed(context, '/search-results');
    }

    handleScan() {}

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SingleCardAction(
            customIcom: FontAwesomeIcons.vials,
            handleClick: handeAnalyse,
            label: 'Analyse',
          ),
          SizedBox(
            width: 10,
          ),
          SingleCardAction(
            customIcom: FontAwesomeIcons.chartLine,
            handleClick: handleResults,
            label: 'Resultats',
          ),
          SizedBox(
            width: 10 ,
          ),
          SingleCardAction(
            customIcom: FontAwesomeIcons.qrcode,
            handleClick: handleScan,
            label: 'Scanner',
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
