import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Container(
                padding:  EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color:  Color(0xFF8BA7A3), width: 1.5),
                ),
                child:  TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search, color: Colors.grey),
                    hintText: 'Search your notes...',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
              ),

               SizedBox(height: 30),


               Text(
                'RECENT SEARCHES',
                style: TextStyle(
                  color: Color(0xFF5E6A71),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                  fontSize: 14,
                ),
              ),

              SizedBox(height: 15),

              buildRecentItem(Icons.access_time, 'meeting'),
              buildRecentItem(Icons.access_time, 'project'),
              buildRecentItem(Icons.access_time, 'travel'),

            SizedBox(height: 30),

              Text(
                'SUGGESTIONS',
                style: TextStyle(
                  color: Color(0xFF5E6A71),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                  fontSize: 14,
                ),
              ),

               SizedBox(height: 15),

              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  buildChip('personal'),
                  buildChip('work'),
                  buildChip('ideas'),
                  buildChip('travel'),
                  buildChip('health'),
                ],
              ),

              Spacer(),
            ],
          ),
        ),
      ),
    );
  }


  static Widget buildRecentItem(IconData icon, String text) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey, size: 22),
          SizedBox(width: 15),
          Text(
            text,
            style: TextStyle(
              fontSize: 17,
              color: Color(0xFF2D3E4E),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  static Widget buildChip(String label) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.grey),
      ),
      child: Text(
        label,
        style:  TextStyle(
          color: Color(0xFF2D3E4E),
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
