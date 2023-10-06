import 'package:flutter/material.dart';
import 'package:login_app/components/custom_form.dart';
import 'package:login_app/size.dart';

import '../components/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          // inset 영역 때문에
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Login"),
            CustomForm(), // 통신으로 전송할때 사용하는 태그
          ],
        ),
      ),
    );
  }
}
