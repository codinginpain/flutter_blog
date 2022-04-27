import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/post/updae_page.dart';
import 'package:get/get.dart';

import 'home_page.dart';

class DetailPage extends StatelessWidget {
  final int id;

  const DetailPage(this.id);

  @override
  Widget build(BuildContext context) {
    //String data = Get.arguments; //arguments로 넘기면 받음 (받을때 타입을 정함)

    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "title",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              Divider(),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.to(UpdatePage());
                    },
                    child: Text("수정"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.off(
                          HomePage()); //상태관리로 갱신 시킬 수 있어서( 새로 객체 만드는 이동을 안씀)
                    },
                    child: Text("삭제"),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  //ListView를 안쓰는 이유는 List가 없고 1개만 오니깐 singleChild를 사용함
                  child: Text("content" * 500),
                ),
              ),
            ],
          ),
        ));
  }
}
