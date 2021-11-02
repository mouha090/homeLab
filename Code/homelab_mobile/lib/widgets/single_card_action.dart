import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:HomeLab/helpers/constants.dart';

class SingleCardAction extends StatelessWidget {
  final Function handleClick;
  final String imageSrc, label;
  final IconData customIcom;

  SingleCardAction({
    this.handleClick,
    this.imageSrc,
    this.label,
    this.customIcom,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: handleClick,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: K_ACTION_CARD_COLOR,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              
              children: <Widget>[
                Icon(
                  customIcom,
                  color: Colors.white,
                  size: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  label,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
