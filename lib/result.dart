import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

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
                  const Text(
                    'Normal',
                    style: TextStyle(color: Colors.green, fontSize: 24),
                  ),
                  const Text(
                    '19.52',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  Text(
                    'Lorem Ipsum' * 10,
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
