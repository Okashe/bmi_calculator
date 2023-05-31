import 'package:flutter/material.dart';

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
      body: Container(
        height: 200.0,
        width: 170.0,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: const Color(0xff1d1e33),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
