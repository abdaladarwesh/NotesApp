import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7F6),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [


              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 40, bottom: 40),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff3A8D8B), Color(0xff6FB1A0)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        child: Text(
                          "J",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Jana Ahmed",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Write your thoughts. Capture your moments.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              buildItem(Icons.favorite_border, "Favorites"),
              buildItem(Icons.notifications_none, "Reminders"),
              buildItemWithBadge(Icons.notifications_none, "Notifications"),
              buildItem(Icons.settings, "Settings"),
              buildItem(Icons.language, "Language"),
              buildItem(Icons.edit, "Edit Profile"),

              const SizedBox(height: 25),


              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      "YOUR STATISTICS",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildStat("250", "Notes"),
                        buildDivider(),
                        buildStat("50", "Favorites"),
                        buildStat("190", "Days"),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),


              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.red),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }


  static Widget buildItem(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Color(0xffE6F2F1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: const Color(0xff3A8D8B)),
          ),
          const SizedBox(width: 15),
          Expanded(child: Text(title)),
          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }

  static Widget buildItemWithBadge(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Color(0xffE6F2F1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: const Color(0xff3A8D8B)),
          ),
          const SizedBox(width: 15),
          Expanded(child: Text(title)),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xff3A8D8B),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              "3",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),

          const SizedBox(width: 10),
          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }

  static Widget buildStat(String num, String title) {
    return Column(
      children: [
        Text(
          num,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xff3A8D8B),
          ),
        ),
        const SizedBox(height: 5),
        Text(title),
      ],
    );
  }

  static Widget buildDivider() {
    return Container(
      height: 30,
      width: 1,
      color: Colors.grey[300],
    );
  }
}