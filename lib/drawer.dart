import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  get fontsize => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Icon(
              Icons.star,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(Icons.perm_identity),
                SizedBox(
                  width: 10,
                ),
                Text('Profile',
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(Icons.article),
                SizedBox(
                  width: 8,
                ),
                Text('Lists',
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(Icons.check_circle),
                SizedBox(
                  width: 8,
                ),
                Text('Topics',
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(Icons.bookmark_border),
                SizedBox(
                  width: 8,
                ),
                Text('Bookmarks',
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(Icons.flash_on),
                SizedBox(
                  width: 8,
                ),
                Text('Moments',
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(Icons.shopping_cart),
                SizedBox(
                  width: 8,
                ),
                Text('Purchases',
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(Icons.payments),
                SizedBox(
                  width: 8,
                ),
                Text('Monetiention',
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(Icons.rocket_launch),
                SizedBox(
                  width: 8,
                ),
                Text('Twitter for Professionals',
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text('Setting and privacy',
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text('Help Center',
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          Icon(Icons.star)
        ]),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }),
        ),
        title: const Text('Twitter'),
      ),
    );
  }
}
