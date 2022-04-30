import 'package:flutter/material.dart';
import 'package:flutter_blog/components/custom_text_form_field.dart';
import 'package:flutter_blog/pages/post/detail_page.dart';
import 'package:flutter_blog/util/validator_util.dart';
import 'package:get/get.dart';

import '../../components/custom_elevated_button.dart';
import '../../components/custom_text_area.dart';
import 'home_page.dart';

class UpdatePage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _writeForm(),
        ));
  }

  Form _writeForm() {
    return Form(
      key: _formkey,
      child: ListView(
        children: [
          Column(
            children: [
              CustomTextFormField(
                hint: "title",
                fnValidator: validatorEmpty("제목"),
                titleValue: "수정 할 제목",
              ),
              CustomTextArea(
                hint: "내용 입력..",
                fnValidator: validatorEmpty("내용"),
                contentValue: "수정 할 내용" * 5,
              ),
              CustomElevatedButton(
                text: '수정하기',
                fnMoveTo: () {
                  if (_formkey.currentState!.validate()) {
                    Get.back(); //GetX의 Obs를 사용하여 상태 갱신
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
