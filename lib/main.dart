import 'package:flutter/material.dart';
import 'package:twitter_ui/twitter_icons.dart';

import 'Material.dart';
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
        primarySwatch: Common.primaryColor,
        canvasColor: Colors.black,
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
      backgroundColor: const Color(0xFF202b),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            const DrawerHeader(
              child: UserAccountsDrawerHeader(
                currentAccountPictureSize: Size.square(50.0),
                otherAccountsPicturesSize: Size.square(30.0),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://limopiece.com/wp-content/uploads/2021/11/78a4c67c7551b26c2c150a3ed61ecc76.jpg"),
                  backgroundColor: Colors.white,
                ),
                accountName: Text(
                  "TEST",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                accountEmail: Text(
                  "@test",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://limopiece.com/wp-content/uploads/2021/11/0fc2bfb729dafdac4d967029d6680e8b.jpg"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://limopiece.com/wp-content/uploads/2021/12/87a1cfb3de5f539c84bb2cdffdef4fd1.jpg"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://limopiece.com/wp-content/uploads/2021/12/39dce509148964070bce238712cc939a.jpg"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(0),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.perm_identity,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.article,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Lists',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.check_circle,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Topics',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.bookmark_border,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Bookmarks',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.flash_on,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Moments',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Purchases',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.payments,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Monetiention',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.rocket_launch,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Twitter for Professionals',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: const [
                        Text('Setting and privacy',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: const [
                        Text('Help Center',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
