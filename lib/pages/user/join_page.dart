import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/user/login_page.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';

import '../../components/custom_elevated_button.dart';
import '../../components/custom_text_form_field.dart';
import '../../util/validator_util.dart';

class JoinPage extends StatelessWidget {
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
                "회원가입",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            _joinForm(),
          ],
        ),
      ),
    );
  }

  Widget _joinForm() {
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
            CustomTextFormField(
              hint: "Email",
              fnValidator: validatorEmail(),
            ),
            CustomElevatedButton(
              text: '회원가입',
              fnMoveTo: () {
                if (_formkey.currentState!.validate()) {
                  Get.to(LoginPage());
                }
              },
            ),
            TextButton(
              onPressed: () {
                Get.to(LoginPage());
              },
              child: Text("로그인 페이지로 이동"),
            ),
          ],
        ));
  }
}
