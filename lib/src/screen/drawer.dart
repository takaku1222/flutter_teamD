import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF15202b),
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://limopiece.com/wp-content/uploads/2021/11/78a4c67c7551b26c2c150a3ed61ecc76.jpg"),
                        radius: 25,
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://limopiece.com/wp-content/uploads/2021/11/0fc2bfb729dafdac4d967029d6680e8b.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://limopiece.com/wp-content/uploads/2021/12/87a1cfb3de5f539c84bb2cdffdef4fd1.jpg"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFF15202b),
                      child: Icon(
                        Icons.pending,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Camille Reid',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '@camille_reid_6538',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      '999',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'フォロー',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '　999',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'フォロワー',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
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
                      Text(
                        'プロフィール',
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
                        Icons.check_circle,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'トピック',
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
                      Text('ブックマーク',
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
                      Text(
                        'リスト',
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
                        Icons.flash_on,
                        color: Colors.white,
                      ),
                      Text(
                        'Twitterサークル',
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
                  child: PreferredSize(
                    preferredSize: const Size.fromHeight(5),
                    child: Container(
                      color: Colors.grey.withOpacity(0.5),
                      height: 0.5,
                    ),
                  ),
                ),
                Padding(
                  // height: 70,
                  padding: const EdgeInsets.all(4),
                  child: ExpansionTile(
                    collapsedIconColor: Colors.white,
                    title: const Text(
                      "Creator Studio",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: double.infinity,
                        child: const Text(
                          "モーメント",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  // height: 70,
                  padding: const EdgeInsets.all(4),
                  child: ExpansionTile(
                    collapsedIconColor: Colors.white,
                    title: const Text(
                      "プロフェッショナルツール",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: double.infinity,
                        child: const Text(
                          "Twitter Pro",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: double.infinity,
                        child: const Text(
                          "収益を得る",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: ExpansionTile(
                    collapsedIconColor: Colors.white,
                    title: const Text(
                      "設定とサポート",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: double.infinity,
                        child: const Text(
                          "設定とプライバシー",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: double.infinity,
                        child: const Text(
                          "ヘルプセンター",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: double.infinity,
                        child: const Text(
                          "購入内容",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
