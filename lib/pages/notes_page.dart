import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Notification",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Color.fromRGBO(47, 111, 109, 1),
            ),
            child: Text(
              "Clear",
              style: TextStyle(color: Color.fromRGBO(47, 111, 109, 1)),
            ),
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return NotificationContainer(title: "Reminder", date: "5 Minutes ago", description: "Don't forget to write your daily reflection",);
        },
      ),
    );
  }
}

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({
    super.key,
    required this.title,
    required this.description,
    required this.date
  });

  final String title;
  final String description;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          border: BoxBorder.fromLTRB(left: BorderSide(
              color: Color.fromRGBO(47, 111, 109, 1),
              width: 5

          )),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                color: Colors.grey.shade300,
                blurRadius: 10
            )
          ]
      ),
      height: 150,
      child: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20, right: 20),
        child: Row(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: AlignmentGeometry.topCenter,
                    margin: EdgeInsets.only(left: 20,),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.notifications_none, color: Colors.green,),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding:  EdgeInsets.only(left: 10.0),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),),
                    Text(description),
                    Spacer(),
                    Text(date),
                  ],
                ),
              ),
            ),
            Column(
              children: [Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(47, 111, 109, 1),
                    shape: BoxShape.circle
                ),
              )],
            )
          ],
        ),
      ),
    );
  }
}
