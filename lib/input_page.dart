import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card_content.dart';

const bottomContainerHeight = 80.0;
const cardColor = Color(0xff1d1e33);
const bottomContainerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: cardColor,
                    cardChild: ReusableCardContent(
                      cardIcon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: cardColor,
                    cardChild: ReusableCardContent(
                      cardIcon: FontAwesomeIcons.mars,
                      label: 'Female',
                    ),
                  ),
                )
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(
              colour: cardColor,
              cardChild: ReusableCardContent(
                cardIcon: FontAwesomeIcons.mars,
                label: 'Female',
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: cardColor,
                    cardChild: ReusableCardContent(
                      cardIcon: FontAwesomeIcons.mars,
                      label: 'Female',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: cardColor,
                    cardChild: ReusableCardContent(
                      cardIcon: FontAwesomeIcons.mars,
                      label: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
