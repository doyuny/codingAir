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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
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
    );
  }
}
