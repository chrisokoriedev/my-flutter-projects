import 'package:ahealthapp/customWidget/custombutton.dart';
import 'package:ahealthapp/customWidget/customcard.dart';
import 'package:ahealthapp/styles/contants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult,@required this.interpretation,@required this.resultText});
final String bmiResult;
final String resultText;
final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context)),
        title: Text(
          'BMI Calculator',
          style: kTextIIStyle,
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Your Result',
                  style: kBigTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BoxWidget(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBiggerTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kLabelIITextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              buttonTitle: 'Re-Calculate', onTap: () => Navigator.pop(context)),
        ],
      ),
    );
  }
}


