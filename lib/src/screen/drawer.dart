import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF15202b),
      child: Column(
        children: <Widget>[
          const DrawerHeader(
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF15202b),
              ),
              currentAccountPictureSize: Size.square(50.0),
              otherAccountsPicturesSize: Size.square(30.0),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://limopiece.com/wp-content/uploads/2021/11/78a4c67c7551b26c2c150a3ed61ecc76.jpg"),
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
                      SizedBox(
                        width: 8,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
