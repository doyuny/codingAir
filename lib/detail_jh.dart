import 'package:flutter/material.dart';

class DetailPage_jh extends StatefulWidget {
  final int index;

  DetailPage_jh({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailPage_jh> createState() => _DetailPage_jhState();
}

class _DetailPage_jhState extends State<DetailPage_jh> {
  final List<String> favoriteSongs = [
    'ios 앱개발은 처음이지만..',
    '열심히 노력하는 모습을 보여드리겠습니다!',
    '다같이 성장해봐요!',
  ]; // 인사말 리스트
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
              '안녕하세요.',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: favoriteSongs.length,
              itemBuilder: (context, index) {
                final song = favoriteSongs[index];
                return ListTile(
                  leading: Icon(Icons.airplane_ticket),
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
              leading: Icon(Icons.person),
              iconColor: Colors.green,
              focusColor: Colors.green,
              title: Text('INFJ'),
              onTap: () {},
              trailing: Icon(
                Icons.navigate_next,
              ),
            ),
            ListTile(
              leading: Icon(Icons.pets),
              iconColor: Colors.green,
              focusColor: Colors.green,
              title: Text('고양이'),
              onTap: () {},
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.computer),
              iconColor: Colors.green,
              focusColor: Colors.green,
              title: Text('컴퓨터 게임'),
              onTap: () {},
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              iconColor: Colors.green,
              focusColor: Colors.green,
              title: Text('코딩'),
              onTap: () {},
              trailing: Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
    );
  }
}
