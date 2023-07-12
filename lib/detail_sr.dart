import 'package:flutter/material.dart';

class DetailPage_sr extends StatelessWidget {
  final int index;

  const DetailPage_sr({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          '팀원 소개 > 오서령',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context); // 메인 페이지로 돌아가기
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 220, 192, 228)!,
                Color.fromARGB(255, 135, 108, 151)!,
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://lh3.googleusercontent.com/-BgzMts05xik/Ws3rSsC-4mI/AAAAAAACExo/iIIdqasTFAkramYdbJXo_lX-Zso-55fDQCHMYCw/s0/6716af3d2218b228bd57a260adaa76d8c3a3c41c.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  '오서령',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    '별명 : 뽀로로 여친, 패티\n'
                    '장점 : 무한 긍정! 포기하지 않아요\n'
                    'MBTI : INTJ\n'
                    '솔직히 아직 아무것도 모르겠어요!\n'
                    '팀원 분들 많이 도와주셔서 정말 감사합니다 ㅠㅠ\n',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
