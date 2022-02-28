import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var number = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  var imageNumber = [1, 2, 3];
  var resultText = "";
  var score = 0;
  var button = "Next";
  var clickable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cards"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Please Select The Number ${number[0]}"),
              InkWell(
                onTap: () {
                  if (imageNumber[0] == number[0]) {
                    setState(() {
                      score += 10;
                      resultText = "Your Answer is Correct";
                      button = "Next";
                    });
                  } else {
                    setState(() {
                      resultText = "Your Answer is Incorrect Try Again";
                      button = "Try Again";
                    });
                  }
                  clickable = true;
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 12),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                  ),
                  child: Image.asset(
                    'assets/images/number/${imageNumber[0]}.png',
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (imageNumber[1] == number[0]) {
                    setState(() {
                      score += 10;
                      resultText = "Your Answer is Correct";
                      button = "Next";
                    });
                  } else {
                    setState(() {
                      resultText = "Your Answer is Incorrect Try Again";
                      button = "Try Again";
                    });
                  }
                  clickable = true;
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 12),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                  ),
                  child: Image.asset(
                    'assets/images/number/${imageNumber[1]}.png',
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (imageNumber[2] == number[0]) {
                    setState(() {
                      score += 10;
                      resultText = "Your Answer is Correct";
                      button = "Next";
                    });
                  } else {
                    setState(() {
                      resultText = "Your Answer is Incorrect Try Again";
                      button = "Try Again";
                    });
                  }
                  clickable = true;
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 12),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                  ),
                  child: Image.asset(
                    'assets/images/number/${imageNumber[2]}.png',
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
              Text("$resultText"),
              Container(
                width: 200,
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 2,
                  color: Colors.blue,
                )),
                child: TextButton(
                    onPressed: () {
                      if (clickable != true) {
                        setState(() {
                          resultText = "Please Select Something To Continue!";
                        });
                      } else if (clickable != false) {
                        setState(() {
                          number.shuffle();
                          imageNumber[0] = number[0];
                          imageNumber[1] = number[1];
                          imageNumber[2] = number[2];
                          imageNumber.shuffle();
                          resultText = "";
                          button = "Next";
                        });
                      }
                      clickable = false;
                    },
                    child: Text(button)),
              ),
              Text("Your Score - $score")
            ],
          ),
        ));
  }
}
