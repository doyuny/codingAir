import 'package:flutter/material.dart';

//내꺼 추가
class DetailPagety extends StatelessWidget {
  final int index;

  const DetailPagety({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "김태영(IOS_7조)",
          style: TextStyle(
            fontSize: 23,
            color: Colors.black,
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
                const Color.fromARGB(255, 247, 248, 248)!,
                const Color.fromARGB(255, 116, 189, 248)!,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://github.com/doyuny/codingAir/assets/99245719/0068cce2-b891-49d5-9a45-811b79438347',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10),
                      Image.network(
                        'https://github.com/doyuny/codingAir/assets/99245719/a159aa04-e33b-48f9-a6fc-763edbbf7228',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    '안녕하세요 저는 내일배움캠프 7조의 미래의 IOS개발자가 되고싶은 김태영 이라고  입니다.\n'
                    '좋아하는 것은 와인과 위스키를 좋아합니다. 와인은 화이트보다 레드를 좋아합니다.\n'
                    '새로운경험을 하는것도 좋아합니다.\n '
                    '이번 내일배움캠프도 저에게 새로운 경험이자 도전일텐데 시간이 조금 걸리더라도\n'
                    '계속 발전할 수 있는 개발자를 목표로 열심히 하도록 노력하겠습니다.',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
