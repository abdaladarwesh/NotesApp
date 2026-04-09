import 'package:flutter/material.dart';
import 'package:notes_app/pages/create_note_page.dart';
import 'package:notes_app/pages/edit_proflie_page.dart';
import 'package:notes_app/pages/favorites_page.dart';
import 'package:notes_app/pages/home_page.dart';
import 'package:notes_app/pages/login_page.dart';
import 'package:notes_app/pages/notifications_page.dart';
import 'package:notes_app/pages/login_page.dart';
import 'package:notes_app/pages/profile_page.dart';
import 'package:notes_app/pages/search_page.dart';
import 'package:notes_app/pages/settings_page.dart';

void main() {
  runApp(NotesApp());
}


class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MainApp(),
      home: MainApp(),
      // home: LoginPage()
    );
  }
}


class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    CreateNotePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
            selectedIconTheme: IconThemeData(
              color: Color.fromRGBO(47, 111, 109,1)
            ),

            onTap: (index) {
             setState(() {
               _currentIndex = index;
             });
            },

            selectedItemColor:Color.fromRGBO(47, 111, 109,1) ,

            unselectedItemColor: Color.fromRGBO(149, 158, 167, 1),

            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined, size: 30,), label: "Home", backgroundColor: Color.fromRGBO(47, 111, 109, 0.1)),
              BottomNavigationBarItem(icon: Icon(Icons.search, size: 30,), label: "Search"), // بنعمل التعديلات بتاعتنا عادي
              BottomNavigationBarItem(icon: Icon(Icons.notes_rounded, size: 30,), label: "Notes"),
              BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined, size: 30,), label: "Profile"),
            ]
            
        ),
      );
  }
}

