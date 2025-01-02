import 'package:bmi_calculator/bmi_brain.dart';
import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isMale = false;
  int height = 120;
  int weight = 75;
  int age = 45;
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
          children: [
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                isMale = true;
                                print(isMale);
                                setState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: isMale
                                        ? const Color(0xff24263b)
                                        : const Color(0xff333244),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(
                                      Icons.male,
                                      size: 75,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Male',
                                      style: TextStyle(
                                          fontSize: isMale ? 24 : null,
                                          fontWeight:
                                              isMale ? FontWeight.bold : null,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                isMale = false;
                                print(isMale);
                                setState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: !isMale
                                        ? const Color(0xff24263b)
                                        : const Color(0xff333244),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(
                                      Icons.female,
                                      color: Colors.white,
                                      size: 75,
                                    ),
                                    Text(
                                      'Female',
                                      style: TextStyle(
                                          fontSize: !isMale ? 24 : null,
                                          fontWeight:
                                              !isMale ? FontWeight.bold : null,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff333244),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Height',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton.filled(
                                    style: IconButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xff8B8C9E)),
                                    onPressed: () {
                                      height--;
                                      print(height);
                                      setState(() {});
                                    },
                                    icon: const Icon(Icons.remove)),
                                Text(
                                  height.toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 32),
                                ),
                                IconButton.filled(
                                    style: IconButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xff8B8C9E)),
                                    onPressed: () {
                                      height++;
                                      setState(() {});
                                      print(height);
                                    },
                                    icon: const Icon(Icons.add)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff333244),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'Weight',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24),
                                  ),
                                  Text(
                                    weight.toString(),
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 24),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconButton.filled(
                                          style: IconButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xff8B8C9E)),
                                          onPressed: () {
                                            weight--;
                                            setState(() {});
                                          },
                                          icon: const Icon(Icons.remove)),
                                      IconButton.filled(
                                          style: IconButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xff8B8C9E)),
                                          onPressed: () {
                                            weight++;
                                            setState(() {});
                                          },
                                          icon: const Icon(Icons.add))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff333244),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'Age',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24),
                                  ),
                                  Text(
                                    age.toString(),
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 24),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconButton.filled(
                                          style: IconButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xff8B8C9E)),
                                          onPressed: () {
                                            age--;
                                            setState(() {});
                                          },
                                          icon: const Icon(Icons.remove)),
                                      IconButton.filled(
                                          style: IconButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xff8B8C9E)),
                                          onPressed: () {
                                            age++;
                                            setState(() {});
                                          },
                                          icon: const Icon(Icons.add))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ResultScreen(
                        bmi: CalculatorBrain().calculateBMI(weight, height));
                  },
                ));
              },
              child: Container(
                height: 100,
                width: double.infinity,
                color: const Color(0xffE83D67),
                child: const Center(
                    child: Text(
                  'CALCULATE',
                  style: TextStyle(color: Colors.white, fontSize: 28),
                )),
              ),
            )
          ],
        ));
  }
}
