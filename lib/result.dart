import 'package:bmi_calculator/bmi_brain.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bmi});
  final double bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c2135),
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        backgroundColor: const Color(0xff24263B),
        title: const Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Your Result',
            style: TextStyle(color: Colors.white, fontSize: 36),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: const Color(0xff333244),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text(
                    CalculatorBrain().getResult(bmi),
                    style: const TextStyle(color: Colors.green, fontSize: 24),
                  ),
                  Text(
                    bmi.toStringAsFixed(1),
                    style: const TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  Text(
                    CalculatorBrain().getInterpretation(bmi),
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: const Color(0xffE83D67),
            child: const Center(
                child: Text(
              'RE-CALCULATE',
              style: TextStyle(color: Colors.white, fontSize: 28),
            )),
          )
        ],
      ),
    );
  }
}
