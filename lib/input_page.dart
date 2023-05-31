import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card_content.dart';

const kBottomContainerHeight = 80.0;
const kActiveCardColor = Color(0xff1d1e33);
const kInactiveCardColor = Color(0xff111328);
const kBottomContainerColor = Color(0xffeb1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;

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
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: const ReusableCardContent(
                      cardIcon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: const ReusableCardContent(
                      cardIcon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: () {},
              colour: kActiveCardColor,
              cardChild: const ReusableCardContent(
                cardIcon: FontAwesomeIcons.mars,
                label: 'Female',
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    colour: kActiveCardColor,
                    cardChild: const ReusableCardContent(
                      cardIcon: FontAwesomeIcons.mars,
                      label: 'Female',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    colour: kActiveCardColor,
                    cardChild: const ReusableCardContent(
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
            color: kBottomContainerColor,
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
