import 'package:flutter/material.dart';
//Scre
import 'package:twitter_ui/src/screen/drawer.dart';
import 'package:twitter_ui/src/screen/home.dart';
import 'package:twitter_ui/src/screen/message.dart';
import 'package:twitter_ui/src/screen/notification.dart';
import 'package:twitter_ui/src/screen/search.dart';
import 'package:twitter_ui/twitter_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const _pages = [
    HomePage(),
    SearchPage(),
    NotificationPage(),
    MessagePage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const DrawerPage(),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF15202b),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  TI.home,
                  color: Colors.white,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  TI.search,
                  color: Colors.white,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  TI.notifications,
                  color: Colors.white,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  TI.messages,
                  color: Colors.white,
                ),
                label: ''),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
