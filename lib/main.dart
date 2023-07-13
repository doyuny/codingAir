import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detail_sr.dart';
import 'detail_ty.dart';
import 'detail_wj.dart';
import 'main_detailpage.dart';
import 'detail_jh.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final TextEditingController textController = TextEditingController();
  List<String> textList = [];

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  void handleButtonPressed() {
    setState(() {
      textList.insert(0, textController.text);
      textController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> imageTexts = [
      '팀장 서원진',
      '팀원 강지훈',
      '팀원 김도윤',
      '팀원 김태영',
      '팀원 오서령',
      '',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Row(
            children: [
              SizedBox(width: 25),
              Text(
                '코딩 Air',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Image.network(
                "https://emojigraph.org/media/apple/airplane_2708-fe0f.png",
                width: 28,
              ),
            ],
          ),
          leadingWidth: 150,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.person, color: Colors.black),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 20,
              ),
              Text(
                '팀 소개',
                style: TextStyle(fontSize: 35),
              ),
              Container(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  '안녕하세요.\n'
                  '''저희는 코딩으로 날아오르자는 당찬 포부를 가진 팀 "코딩 Air" 입니다. 저희 팀원들은 MBTI (E : 50% , I : 50%)로 서로 성향은 다르지만, 놀 때는 활발하게 잘 놀고 일할 때는 진중하며 의견을 내며 소통에 능한 팀입니다! 같이 화이팅해서 높이 날아오르겠습니다!''',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'NanumPenScript',
                  ),
                ),
              ),
              SizedBox(height: 25), // 간격 추가
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 4,
                runSpacing: 4,
                children: List.generate(6, (index) {
                  return GestureDetector(
                    onTap: () {
                      switch (index) {
                        case 0:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPageWj(index: 0)),
                          );
                          break;
                        case 1:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage_jh(index: 1)),
                          );
                          break;
                        case 2:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage(index: 2)),
                          );
                          break;
                        case 3:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPagety(index: 3)),
                          );
                          break;
                        case 4:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage_sr(index: 4)),
                          );
                          break;
                        case 5:
                          break;
                        // 나머지 인덱스에 따른 페이지 이동 로직 추가
                        default:
                          break;
                      }
                    },
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 1,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              "https://emojigraph.org/media/apple/airplane_2708-fe0f.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          imageTexts[index], // 각 사진에 대한 텍스트 설정
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  );
                }),
              ),
              SizedBox(height: 25), // 간격 추가

              // 방명록 기능 추가

              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      controller: textController,
                      decoration: InputDecoration(
                        labelText: '응원의 한마디!',
                      ),
                      onEditingComplete: () {
                        handleButtonPressed();
                      },
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        handleButtonPressed();
                      },
                      child: Text('Submit'),
                    ),
                    SizedBox(height: 16.0),
                    ListView.builder(
                      shrinkWrap: true,
                      reverse: true,
                      itemCount: textList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(textList[index]),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
