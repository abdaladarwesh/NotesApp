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
          return NotificationContainer();
        },
      ),
    );
  }
}

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.red,
      height: 150,
    );
  }
}
