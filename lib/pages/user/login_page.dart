import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/post/home_page.dart';
import 'package:get/get.dart';

import '../../components/custom_elevated_button.dart';
import '../../components/custom_text_form_field.dart';
import '../../util/validator_util.dart';
import 'join_page.dart';

class LoginPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              child: Text(
                "로그인",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            _loginForm(),
          ],
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
        key: _formkey,
        child: Column(
          children: [
            CustomTextFormField(
              hint: "User Name",
              fnValidator: validatorUserName(),
            ),
            CustomTextFormField(
              hint: "Password",
              fnValidator: validatorPassword(),
            ),
            CustomElevatedButton(
              text: '로그인',
              fnMoveTo: () {
                if (_formkey.currentState!.validate()) {
                  Get.to(HomePage());
                }
              },
            ),
            TextButton(
              onPressed: () {
                Get.to(JoinPage());
              },
              child: Text("아직 회원이 아니신가요?"),
            ),
          ],
        ));
  }
}
