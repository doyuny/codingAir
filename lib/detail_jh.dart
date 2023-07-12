import 'package:flutter/material.dart';

class DetailPage_jh extends StatelessWidget {
  final int index;

  const DetailPage_jh({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ),
      ),
    );
  }
}
