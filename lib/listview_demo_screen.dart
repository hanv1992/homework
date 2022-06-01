// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

class ListviewDemoScreen extends StatefulWidget {
  @override
  _ListviewDemoScreenState createState() => _ListviewDemoScreenState();
}

class _ListviewDemoScreenState extends State<ListviewDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My cart'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5.0),
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                      height: 100,
                      margin: EdgeInsets.all(5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.,
                        children: [
                          if (index % 2 == 1)
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              child: Image.network(
                                'https://pbs.twimg.com/profile_images/1478893871199186945/1mA6tezL_400x400.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          Expanded(
                            child: Container(
                              width: 400,
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('item ${index + 1}'),
                                      Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Price: \$200',
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    'Sub total: \$400 ',
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Ships free:',
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Text(
                                        ' - ',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 24,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              offset: Offset(0.5, 0.5),
                                            ),
                                          ],
                                        ),
                                        child: Text(
                                          ' 2 ',
                                          style: TextStyle(
                                            color: Colors.orangeAccent,
                                            fontSize: 24,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        ' + ',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 24,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (index % 2 == 0)
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              child: Image.network(
                                'https://pbs.twimg.com/profile_images/1478893871199186945/1mA6tezL_400x400.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 5,
                    );
                  },
                  itemCount: 10,
                  shrinkWrap: true,
                ),
              ),
            ),
            Container(
              height: 100,
              color: Colors.grey,
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Check out price:'),
                      Spacer(),
                      Text(
                        'Rs. 5000',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                            ),
                            onPressed: () {},
                            child: Text('Check out'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
