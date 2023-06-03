import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/resusable_card.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult, required this.interpretation, required this.resultText})

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  'Your Result',
                  style: kTtileTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                  ),
                  BottomButton(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      buttonTitle: 'RE-CALCULATE'
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
