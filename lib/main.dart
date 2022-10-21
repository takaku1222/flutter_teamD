import 'package:flutter/material.dart';
import 'package:twitter_ui/twitter_icons.dart';

import 'message_page.dart';

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
          TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              minimumSize: MaterialStateProperty.all(Size.zero),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://www.faceplusplus.com/demo/images/demo-pic11.jpg'),
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessagePage()),
              );
            },
          ),
          const Divider(
            height: 12.0,
            color: Colors.transparent,
          ),
          TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              minimumSize: MaterialStateProperty.all(Size.zero),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://www.faceplusplus.com/demo/images/demo-pic1.jpg'),
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
                style: TextStyle(fontSize: 16.0, color: Color(0xFF71767B)),
              ),
            ),
            onPressed: () => print('clicked!'),
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
