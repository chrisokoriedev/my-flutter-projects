import 'package:ahealthapp/styles/contants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
BottomButton({@required this.buttonTitle,@required this.onTap});
final Function onTap;
final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(buttonTitle,style: kBigTextStyle,),
          ],
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}