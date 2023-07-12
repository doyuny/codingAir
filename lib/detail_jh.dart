import 'package:flutter/material.dart';

class DetailPage_jh extends StatefulWidget {
  final int index;

  DetailPage_jh({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailPage_jh> createState() => _DetailPage_jhState();
}

class _DetailPage_jhState extends State<DetailPage_jh> {
  final List<String> favoriteSongs = [
    '숲의 목소리(마크튭)',
    '모두의 세상(박효신)',
    'Rainbow(데이먼스 이어)',
    '꽃이 피고 지듯이(조승우)',
    '손오공(세븐틴)',
  ]; // 노래 목록
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("강지훈 팀원😄", style: TextStyle(color: Colors.black)),
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              '내가 좋아하는 노래🎧',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: favoriteSongs.length,
              itemBuilder: (context, index) {
                final song = favoriteSongs[index];
                return ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text(song),
                );
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(),
              accountName: Text('강지훈'),
              accountEmail: Text('minsakr10@naver.com'),
              onDetailsPressed: () {},
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              iconColor: Colors.green,
              focusColor: Colors.green,
              title: Text('홈'),
              onTap: () {},
              trailing: Icon(
                Icons.navigate_next,
              ),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_rounded),
              iconColor: Colors.green,
              focusColor: Colors.green,
              title: Text('쇼핑'),
              onTap: () {},
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.mark_as_unread_sharp),
              iconColor: Colors.green,
              focusColor: Colors.green,
              title: Text('편지함'),
              onTap: () {},
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.restore_from_trash),
              iconColor: Colors.green,
              focusColor: Colors.green,
              title: Text('휴지통'),
              onTap: () {},
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              iconColor: Colors.green,
              focusColor: Colors.green,
              title: Text('설정'),
              onTap: () {},
              trailing: Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
    );
  }
}
