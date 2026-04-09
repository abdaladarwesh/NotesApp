import 'package:flutter/material.dart';

void main(){
  runApp(MyEtisalatServices());
}
class MyEtisalatServices extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.apps),
          titleSpacing: 1,
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize:22),
          title: Text("MyEtisalat - Services"),
          backgroundColor:Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 200,
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 20,
                      children: [
                        Text("Hi user",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                        ),
                        ),
                        Icon(Icons.keyboard_arrow_down_outlined),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsetsGeometry.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      spacing: 10,
                      children: [
                        Container(
                          padding: EdgeInsetsGeometry.fromLTRB(10, 10, 10, 10),
                          decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.notifications_none),
                        ),
                      ],
                    ),
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
