import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color(0xFF15202b),
        appBar: AppBar(
          backgroundColor: const Color(0xFF15202b),
          title: SizedBox(
            height: 40,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0x696969),
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Center(
                child: Container(
                  width: 340,
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child: TextField(
                    //controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Search Twitter',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      contentPadding: EdgeInsets.only(left: 8.0),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      isDense: true,
                    ),
                  ),
                ),
              ),
            ),
          ),
          elevation: 0,
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
                'https://ca.slack-edge.com/T0179KMH83U-U01UFRZGT6C-a1ed61feb4aa-512',
              ),
              radius: 18,
            ),
            onPressed: () {},
          ),
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: <Tab>[
              Tab(
                text: 'For you',
              ),
              Tab(text: 'Treding'),
              Tab(text: 'News'),
              Tab(text: 'Sports'),
              Tab(text: 'Entertainment'),
            ],
          ),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Image.network(
                  "https://ichef.bbci.co.uk/news/1024/branded_japanese/0E43/production/_126915630_forbbconly.jpg"),
              ListTile(
                trailing: Padding(
                  padding: const EdgeInsets.all(5.5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.network(
                          "https://jbpress.ismcdn.jp/mwimgs/a/9/1200mw/img_a9ee6de4f1c60254afd3f11ef54f7bff2545408.jpg"),
                    ),
                  ),
                ),
                title: Text(
                  'ロシアによるウクライナへの侵攻状況　',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                trailing: Padding(
                  padding: const EdgeInsets.all(5.5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.network(
                          "https://img.huffingtonpost.com/asset/603f1fcc270000200957e700.png?cache=3nhyVT7oPq&ops=1778_1000"),
                    ),
                  ),
                ),
                title: Text(
                  '小さなこの自恣、親がかけるべき言葉は\n生の話題「タブー視せずに」',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                trailing: Padding(
                  padding: const EdgeInsets.all(5.5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.network(
                            "https://d1d37e9z843vy6.cloudfront.net/jp/images/3774933/19f9149434c8db80f936791c3b90880e2d186dd5.jpeg"),
                      ),
                    ),
                  ),
                ),
                title: Container(
                  child: Text(
                    '[世界の異常気象]米で皮が干し上がりカジ\nノ船が出現、南極に前兆130km異常',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                trailing: Padding(
                  padding: const EdgeInsets.all(5.5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.network(
                          "https://www.nhk.or.jp/politics/wp-content/uploads/2022/11/1102itika.jpg"),
                    ),
                  ),
                ),
                title: Text(
                  '千葉の「居眠り議会」が信頼回復のため生\n配信を導入！そこには”寝落ち”姿が...「眠\nくなる答弁が悪い」議員からは反発も',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  '緑川さん',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  '運転見合わせ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Sell Harland',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
