import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF15202b),
        appBar: AppBar(
          backgroundColor: const Color(0xFF15202b),
          elevation: 0,
          title: Image.asset(
            'assets/images/Twitter logo.png',
            height: 50,
            fit: BoxFit.contain,
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
                'https://ca.slack-edge.com/T0179KMH83U-U01UFRZGT6C-gd57c02093f3-512',
              ),
              radius: 18,
            ),
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TwitterWidgets(
                  name: '佐藤 ジェシー',
                  subName: '@satou01・15分',
                  text: 'おやすみ',
                  number: '1',
                  secondNumber: '5',
                  thirdNumber: '10',
                  profileImages:
                      'https://www.faceplusplus.com/demo/images/demo-pic10.jpg',
                ),
                Divider(
                  thickness: 0.1,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                TwitterWidgets(
                  name: '高橋 清',
                  subName: '@tanaka12・20分',
                  text: 'Flutter大学の修行プランに入った',
                  number: '2',
                  secondNumber: '12',
                  thirdNumber: '30',
                  profileImages:
                      'https://www.faceplusplus.com/demo/images/demo-pic2.jpg',
                ),
                Divider(
                  thickness: 0.1,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                SecondWidget(
                  name: 'Flutter大学',
                  subName: '@FlutterUniv・5時間',
                  text: 'テックフォード割りが出来ました!',
                  number: '6',
                  secondNumber: '120',
                  thirdNumber: '200',
                  profileImages:
                      'https://pbs.twimg.com/profile_images/1501141223502843905/1XWLMWui_400x400.jpg',
                  image: 'assets/images/flutter.jpg',
                ),
                Divider(
                  thickness: 0.1,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                TwitterWidgets(
                  name: '鈴木 エマ',
                  subName: '@suzuki22・9時間',
                  text: 'テックフォートアカデミー\nに入学しました！',
                  number: '2',
                  secondNumber: '12',
                  thirdNumber: '30',
                  profileImages:
                      'https://www.faceplusplus.com/demo/images/demo-pic7.jpg',
                ),
                Divider(
                  thickness: 0.1,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                TwitterWidgets(
                  name: 'バンタン',
                  subName: '@vantantechford・23時間',
                  text: 'Flutter大学に入りました!',
                  number: '7',
                  secondNumber: '22',
                  thirdNumber: '60',
                  profileImages:
                      'https://pbs.twimg.com/profile_images/1509443361975209990/H4rqMlzi_400x400.jpg',
                ),
                Divider(
                  thickness: 0.1,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                TwitterWidgets(
                  name: '山田 太郎',
                  subName: '@yamada123・23時間',
                  text: 'おはよう!',
                  number: '10',
                  secondNumber: '20',
                  thirdNumber: '37',
                  profileImages:
                      'https://www.faceplusplus.com/demo/images/demo-pic11.jpg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondWidget extends StatelessWidget {
  const SecondWidget({
    super.key,
    required this.name,
    required this.subName,
    required this.text,
    required this.number,
    required this.secondNumber,
    required this.thirdNumber,
    required this.profileImages,
    required this.image,
  });

  final String name;
  final String subName;
  final String text;
  final String number;
  final String secondNumber;
  final String thirdNumber;
  final String profileImages;
  final String image;

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
            Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 5),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
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
                    FontAwesomeIcons.solidHeart,
                    color: Colors.pink,
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

class TwitterWidgets extends StatelessWidget {
  const TwitterWidgets({
    super.key,
    required this.name,
    required this.subName,
    required this.text,
    required this.number,
    required this.secondNumber,
    required this.thirdNumber,
    required this.profileImages,
  });

  final String name;
  final String subName;
  final String text;
  final String number;
  final String secondNumber;
  final String thirdNumber;
  final String profileImages;

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
                  style: TextStyle(fontSize: 16, color: Colors.white),
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
            Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 5),
            Row(
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
          ],
        ),
      ],
    );
  }
}
