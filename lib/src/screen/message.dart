import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF15202b),
        appBar: AppBar(
          backgroundColor: const Color(0xFF15202b),
          elevation: 0,
          title: const Text(
            'メッセージ',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.star),
              color: Colors.lightBlue,
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://ca.slack-edge.com/T0179KMH83U-U01UFRZGT6C-a1ed61feb4aa-512',
              ),
              radius: 18,
            ),
            onPressed: () {},
          ),
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
                      style:
                          TextStyle(fontSize: 14.0, color: Color(0xFF71767B)),
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
              onPressed: () {},
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
                      style:
                          TextStyle(fontSize: 14.0, color: Color(0xFF71767B)),
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
      ),
    );
  }
}
