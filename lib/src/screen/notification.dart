import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: const Color(0xFF15202b),
          appBar: AppBar(
            backgroundColor: const Color(0xFF15202b),
            title: const Text(
              '通知',
              style: TextStyle(fontSize: 20),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                color: Colors.white,
                onPressed: () {},
              ),
            ],
            bottom: const TabBar(
              tabs: <Widget>[
                Text(
                  'すべて',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  '＠ツイート',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            leading: IconButton(
              icon: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://ca.slack-edge.com/T0179KMH83U-U01UFRZGT6C-gd57c02093f3-512',
                ),
                radius: 18,
              ),
              onPressed: () {},
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const TwitterWidgets(
                        name: 'Flutter大学',
                        subName: '@FlutterUniv・40分',
                        responceText: '返信先: ',
                        responcesubText: 'バンタンさん',
                        text: 'テックフォード割りが出来ました!',
                        number: '2',
                        secondNumber: '12',
                        thirdNumber: '30',
                        profileImages:
                            'https://pbs.twimg.com/profile_images/1501141223502843905/1XWLMWui_400x400.jpg',
                      ),
                      const Divider(
                        thickness: 0.1,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.favorite),
                                  color: Colors.pink,
                                  onPressed: () {},
                                ),
                                const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    'https://pbs.twimg.com/profile_images/1501141223502843905/1XWLMWui_400x400.jpg',
                                  ),
                                  radius: 18,
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Text(
                                'Flutter大学さんが\nあなたの返信をいいねしました',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Text(
                                'Flutter大学に入りました！',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 0.1,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
              // ＠ツイート
              Column(
                children: const [
                  TwitterWidgets(
                    name: '鈴木 エマ',
                    subName: '@suzuki22・20分',
                    text: 'こんにちは',
                    responceText: '返信先: ',
                    responcesubText: '＠山田 太郎',
                    number: '2',
                    secondNumber: '12',
                    thirdNumber: '30',
                    profileImages:
                        'https://www.faceplusplus.com/demo/images/demo-pic7.jpg',
                  ),
                  TwitterWidgets(
                    name: '山田 太郎',
                    subName: '@yamada123・20分',
                    text: 'おはよう',
                    responceText: '返信先: ',
                    responcesubText: '＠鈴木 エマ',
                    number: '2',
                    secondNumber: '12',
                    thirdNumber: '30',
                    profileImages:
                        'https://www.faceplusplus.com/demo/images/demo-pic11.jpg',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TwitterWidgets extends StatelessWidget {
  const TwitterWidgets({
    super.key,
    required this.name,
    required this.subName,
    required this.responceText,
    required this.responcesubText,
    required this.text,
    required this.number,
    required this.secondNumber,
    required this.thirdNumber,
    required this.profileImages,
  });

  final String name;
  final String subName;
  final String profileImages;
  final String responceText;
  final String responcesubText;
  final String text;
  final String number;
  final String secondNumber;
  final String thirdNumber;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            profileImages,
          ),
          radius: 30,
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  subName,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Color(0xFF71767B),
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  responceText,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  responcesubText,
                  style: const TextStyle(fontSize: 16, color: Colors.lightBlue),
                ),
              ],
            ),
            const SizedBox(
              width: 16.0,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.comment,
                    color: Colors.grey,
                    size: 15,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    number,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 30),
                  const FaIcon(
                    FontAwesomeIcons.retweet,
                    color: Colors.grey,
                    size: 15,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    secondNumber,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 30),
                  const FaIcon(
                    FontAwesomeIcons.heart,
                    color: Colors.grey,
                    size: 15,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    thirdNumber,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 30),
                  const FaIcon(
                    FontAwesomeIcons.arrowUpFromBracket,
                    color: Colors.grey,
                    size: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
