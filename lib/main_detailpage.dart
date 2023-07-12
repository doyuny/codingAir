import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;

  const DetailPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 247, 248, 248)!,
              const Color.fromARGB(255, 116, 189, 248)!,
            ],
          ),
        ),
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // 메인 페이지로 돌아가기
              },
              child: Container(
                color: Colors.transparent,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60, left: 17),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context); // 메인 페이지로 돌아가기
                },
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 70),
                child: Text(
                  '팀원 김도윤',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage('assets/image/제목 2.png'), // 이미지의 경로
                          fit: BoxFit.contain, // 이미지 전체가 보이도록 조정
                        ),
                      ),
                    ),
                    SizedBox(height: 55), // 이미지와 텍스트 사이에 간격 조정
                    Text(
                      '안녕하세요😀\n'
                      '7조 팀원 김도윤입니다\n'
                      '처음으로 앱개발을 배우게 되어 \n부족한 점이 많습니다.\n'
                      '하지만 최대한 참여도 많이 하고 \n의견도 많이 내려고 노력합니다.\n'
                      '같이 열심히 앱개발 뽀개봐요\n'
                      '잘부탁드립니당👏',
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: FractionalTranslation(
                translation: Offset(0.005, -0.3),
                child: Image.asset(
                  'assets/image/제목.png',
                  height: 140,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FractionalTranslation(
                translation: Offset(-0.005, -0.3),
                child: Image.asset(
                  'assets/image/반전.png',
                  height: 140,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
