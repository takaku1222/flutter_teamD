import 'package:flutter/material.dart';
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF15202b),
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
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(5),
            child: Container(
              color: Colors.grey.withOpacity(0.5),
              height: 1,
            )),
        backgroundColor: const Color(0xFF15202b),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.account_circle,
            size: 30,
          ),
        ),
        title:
            const Text('メッセージ', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              TI.preferences,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const Divider(
            height: 12.0,
            color: Colors.transparent,
          ),
          ListTile(
            leading: const CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://www.faceplusplus.com/demo/images/demo-pic21.jpg'),
            ),
            title: Row(
              children: const <Widget>[
                Text(
                  '山田 太郎',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '@yamada123・15分',
                  style: TextStyle(fontSize: 14.0, color: Color(0xFF71767B)),
                ),
                SizedBox(
                  width: 16.0,
                ),
              ],
            ),
            subtitle: const Text(
              'テストメッセージ、互換性の確認、バックアップの作成、空き容量の確保などの事前準備',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
          const Divider(
            height: 12.0,
            color: Colors.transparent,
          ),
          ListTile(
            leading: const CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://media.kairos.com/go-demo/images/team/Ben_Virdee-Chapman.jpg'),
            ),
            title: Row(
              children: const <Widget>[
                Text(
                  '山田 太郎',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '@yamada123・15分',
                  style: TextStyle(fontSize: 14.0, color: Colors.white),
                ),
                SizedBox(
                  width: 16.0,
                ),
              ],
            ),
            subtitle: const Text(
              'テストメッセージ、互換性の確認、バックアップの作成、空き容量の確保などの事前準備',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(TI.add),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 0.5, //太さ
              color: Colors.grey, //色
            ),
          ),
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(TI.home, color: Color(0xFFFFFFFF)), label: ""),
            BottomNavigationBarItem(
                icon: Icon(TI.search, color: Color(0xFFFFFFFF)), label: ""),
            BottomNavigationBarItem(
                icon: Icon(TI.notification, color: Color(0xFFFFFFFF)),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(TI.message, color: Color(0xFFFFFFFF)), label: ""),
          ],
          backgroundColor: const Color(0xFF151F2B),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
