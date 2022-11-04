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
              icon: const Icon(Icons.settings),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://limopiece.com/wp-content/uploads/2021/11/78a4c67c7551b26c2c150a3ed61ecc76.jpg',
              ),
              radius: 18,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
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
                      'Wayne Lyons',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '@Lyons211・1分',
                      style:
                          TextStyle(fontSize: 14.0, color: Color(0xFF71767B)),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                  ],
                ),
                subtitle: const Text(
                  'Are there any plans to introduce the islands architecture for hydration in SSR?',
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
                      'Veronica Miles',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '@Mil44・15分',
                      style:
                          TextStyle(fontSize: 14.0, color: Color(0xFF71767B)),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                  ],
                ),
                subtitle: const Text(
                  'Nah, I dunno. Play soccer.. or learn more coding perhaps?',
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
