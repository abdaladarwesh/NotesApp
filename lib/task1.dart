import 'package:flutter/material.dart';

void main(){
  runApp(Notes());
}
class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
            title:Row(children: [Icon(Icons.arrow_back,), Spacer(),Icon(Icons.more_vert),ElevatedButton.icon(
              onPressed: () {

              },
              icon: Icon(Icons.save, color: Colors.white),
              label: Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2E7D6B),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ) ],)


        ),

        body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Note Title",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 6),

                Text(
                  "Thursday, April 9, 2026",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),

                SizedBox(height: 15),

                Row(
                  children:  [
                    Icon(Icons.image_outlined, color: Colors.grey),
                    SizedBox(width: 15),
                    Icon(Icons.check_box_outlined, color: Colors.grey),
                  ],
                ),

                SizedBox(height: 20),

                Divider(),

                SizedBox(height: 10),

                Expanded(
                  child: TextField(
                    decoration:  InputDecoration(
                      hintText: "Start writing your thoughts...",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),),
      ),
    );


  }

}