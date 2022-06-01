// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:homework/calculator_screen.dart';
import 'package:homework/flex_demo_screen.dart';

import 'listview_demo_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Card(
                      child: GestureDetector(
                        child: Center(child: Text('BTVN 3')),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return CalculatorScreen();
                          }));
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Card(
                      child: GestureDetector(
                        child: Center(child: Text('BTVN 4')),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return FlexDemoScreen();
                          }));
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Card(
                      child: GestureDetector(
                        child: Center(child: Text('BTVN 5')),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return ListviewDemoScreen();
                          }));
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
