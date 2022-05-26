import 'package:flutter/material.dart';
import 'dart:developer';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  num a = 0;
  num b = 0;
  String c = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    num1Controller.dispose();
    num2Controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Simple Calculator'),
        ),
        body: buildBody());
  }

  Widget buildBody() {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Flexible(
                flex: 1,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: num1Controller,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    try {
                      a = int.parse(value);
                    } catch (e) {
                      a = 0;
                    }
                  },
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Flexible(
                flex: 1,
                child: TextField(
                  controller: num2Controller,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    try {
                      b = int.parse(value);
                    } catch (e) {
                      b = 0;
                    }
                  },
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text('$c'),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    c = 'Result is ${(a + b)}';
                  });
                },
                child: const Text('+'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    c = 'Result is ${(a - b)}';
                  });
                },
                child: const Text('-'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    c = 'Result is ${(a * b)}';
                  });
                },
                child: const Text('x'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (b != 0) {
                      c = 'Result is ${(a / b)}';
                    } else {
                      c = 'Can not divide by zero';
                    }
                  });
                },
                child: const Text(':'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
