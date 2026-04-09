import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(InvoiceApp());
}

class InvoiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "Invoices Application",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
          children:[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text("Today",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 10,
                    children: [
                      Icon(Icons.screenshot_monitor,color: Colors.black),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Screen App",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                            Text("Paid on:May,4th 2023",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("\$24.99",
                        style: TextStyle(color: Colors.black,
                        ),
                      ),
                      Text("DUE",
                        style: TextStyle(color: Colors.pinkAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0,horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 10,
                    children: [
                      Icon(Icons.settings,color: Colors.redAccent),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Slack LTD",
                            style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold,

                            ),
                            ),
                            Text("Paid on: May, 4th 2023",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("\$55.99",
                        style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("DUE",
                        style: TextStyle(color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Text("Earlier Invoices",
                style: TextStyle(color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0,horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 10,
                    children: [
                      Icon(Icons.sports_basketball,color: Colors.purple),
                      Container(
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dribble LTD.",
                              style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Paid on: May, 4th 2023",
                              style: TextStyle(color:Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "\$499.99",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "OVERDUE",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ]
        ),
      ),
    );

  }
}