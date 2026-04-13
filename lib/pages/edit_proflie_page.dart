import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Center(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.teal,
                      child: Text(
                        "M",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.teal,
                      child: Icon(
                        Icons.camera_alt,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text("Tap to change photo"),
              ],
            ),
          ),

          SizedBox(height: 20),

          Text("Name"),
          TextField(
            decoration: InputDecoration(
              hintText: "Miranda West",
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),

          SizedBox(height: 15),

          Text("Email"),
          TextField(
            decoration: InputDecoration(
              hintText: "miranda.west@example.com",
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),

          SizedBox(height: 15),

          Text("New Password"),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Leave blank to keep current password",
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text("Save Changes"),
          ),

          SizedBox(height: 20),

          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Account Settings",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text("Change password", style: TextStyle(color: Colors.teal)),
                SizedBox(height: 10),
                Text(
                  "Privacy settings",
                  style: TextStyle(color: Colors.teal),
                ),
                SizedBox(height: 10),
                Text("Delete account", style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
