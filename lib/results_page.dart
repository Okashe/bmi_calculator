import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final double bmi;
  const ResultsPage({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'NORMAL',
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi.toStringAsFixed(1),
                    style: kBMITextStyle,
                  ),
                  const Text(
                    'Your BMI result is quite low, you should eat more!',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),

          // Expanded(
          //   child: ReusableCard(
          //     colour: kInactiveCardColor,
          //     cardChild: Column(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       crossAxisAlignment: CrossAxisAlignment.stretch,
          //       children: <Widget>[
          //         const Text('NORMAL', style: TextStyle(color: Colors.green)),
          //         Text(bmi.toStringAsFixed(1), style: kNumberStyle),
          //       ],
          //     ),
          //   ),
          // ),
          // const Text(
          //   'Good Job! Your BMI is normal . Keeping maintainig it!',
          // ),
          BottomButton(
            buttonTitle: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
