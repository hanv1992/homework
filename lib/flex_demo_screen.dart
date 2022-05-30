// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:developer';

class FlexDemoScreen extends StatefulWidget {
  const FlexDemoScreen({Key? key}) : super(key: key);

  @override
  _FlexDemoScreenState createState() => _FlexDemoScreenState();
}

class _FlexDemoScreenState extends State<FlexDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex Demo'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Image.network(
                      'https://daotaotester-18154-1fa76n8o6.sgp1.cdn.digitaloceanspaces.com/lib/image/banner2022flutter_xaCqkWqFFhe3xsQoY-original.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lập trình flutter',
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            'Thực chiến  dự án app mobile 2022',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    flex: 3,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.green,
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Lập trình \n Android',
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Java + Kotlin',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Image.network(
                      'https://daotaotester-18154-1fa76n8o6.sgp1.cdn.digitaloceanspaces.com/lib/image/banner2022android-2_97DqRWCJzBogbBzuA-original.jpg',
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.green,
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: Image.network(
                      'https://daotaotester-18154-1fa76n8o6.sgp1.cdn.digitaloceanspaces.com/lib/image/bannerjavacore2_rnncQ4cwjHF5sFDmD-original.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lập trình \n java cơ bản',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            'Cho người mới bắt đầu',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    flex: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
