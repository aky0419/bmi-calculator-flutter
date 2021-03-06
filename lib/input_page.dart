import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1F33);
const bottomContainerColor = Color(0xFFEB1555);
const inActiveCardColor = Color(0xFF111328);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      selectedGender == Gender.male
                      ? activeCardColor
                      : inActiveCardColor,
                      IconContent('MALE', FontAwesomeIcons.mars),
                      null),

                ),
                Expanded(
                  child: ReusableCard(
                    selectedGender == Gender.female
                        ? activeCardColor
                        : inActiveCardColor,
                    IconContent('FEMALE', FontAwesomeIcons.venus),
                    null
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(inActiveCardColor, null, null),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(inActiveCardColor, null, null),
                ),
                Expanded(
                  child: ReusableCard(inActiveCardColor, null, null),
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
