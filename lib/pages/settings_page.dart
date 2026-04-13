import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text("Settings", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),

      body: ListView(
        padding: EdgeInsets.all(15),
        children: [

          Text("Appearance", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.purple.withOpacity(0.2),
                child: Icon(Icons.dark_mode, color: Colors.purple),
              ),
              title: Text("Dark Mode"),
              subtitle: Text("Switch to dark theme"),
              trailing: Switch(
                value: false,
                onChanged: (value) {},
              ),
            ),
          ),

          SizedBox(height: 15),

          Text("Notifications", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [

                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue.withOpacity(0.2),
                    child: Icon(Icons.notifications, color: Colors.blue),
                  ),
                  title: Text("Push Notifications"),
                  subtitle: Text("Receive notifications"),
                  trailing: Switch(
                    value: true,
                    onChanged: (value) {},
                  ),
                ),

                Divider(),

                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.orange.withOpacity(0.2),
                    child: Icon(Icons.alarm, color: Colors.orange),
                  ),
                  title: Text("Daily Reminder"),
                  subtitle: Text("Remind to write daily"),
                  trailing: Switch(
                    value: true,
                    onChanged: (value) {},
                  ),
                ),

              ],
            ),
          ),

          SizedBox(height: 15),

          Text("General", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [

                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green.withOpacity(0.2),
                    child: Icon(Icons.language, color: Colors.green),
                  ),
                  title: Text("Language"),
                  subtitle: Text("English"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 15),
                ),

                Divider(),

                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.red.withOpacity(0.2),
                    child: Icon(Icons.lock, color: Colors.red),
                  ),
                  title: Text("Privacy"),
                  subtitle: Text("Manage your privacy settings"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 15),
                ),

              ],
            ),
          ),

          SizedBox(height: 15),

          Text("Support", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [

                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.yellow.withOpacity(0.2),
                    child: Icon(Icons.help, color: Colors.orange),
                  ),
                  title: Text("Help Center"),
                ),

                Divider(),

                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal.withOpacity(0.2),
                    child: Icon(Icons.info, color: Colors.teal),
                  ),
                  title: Text("About"),
                  subtitle: Text("Version 1.0.0"),
                ),

              ],
            ),
          ),

          SizedBox(height: 20),

        ],
      ),
    );
  }
}