import 'package:flutter/material.dart';
import 'package:login_app/user_repository.dart';
import 'package:login_app/validator_util.dart';

import '../size.dart';
import 'custom_text_form_field.dart';

class CustomForm extends StatelessWidget {
  // 1
  final _formKey = GlobalKey<FormState>();

  final _email = TextEditingController(); // _는 다른페이지에서 사용못함
  final _password = TextEditingController();

  CustomForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      // 2
      key: _formKey, // form의 정보를 다 가지고 있다.
      child: Column(
        children: [
          // 3 각각의 필드에 체크로직 구현
          CustomTextFormField(
              text: "Email", validate: validateEmail(), textController: _email),
          CustomTextFormField(
              text: "Password",
              validate: validatePassword(),
              isPassword: true,
              textController: _password),
          SizedBox(height: large_gap),
          // submit 버튼 클릭시
          TextButton(
              onPressed: () {
                // 로그인 키를 누르는 순간 발동된다.
                if (_formKey.currentState!.validate()) {
                  // validate가 null을 리턴하면 true가 된다.
                  UserRepository repo = UserRepository();
                  repo.login(_email.text.trim(), _password.text.trim());
                  Navigator.pushNamed(context, "/home");
                }
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
