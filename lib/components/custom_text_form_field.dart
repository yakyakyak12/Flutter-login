import 'package:flutter/material.dart';

import '../size.dart';

class CustomTextFormField extends StatelessWidget {
  final textController;
  final validate;
  String text;
  bool isPassword;
  CustomTextFormField(
      {required this.text,
      required this.validate,
      this.textController,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$text"),
        SizedBox(height: small_gap),
        TextFormField(
          controller: textController, // 컨트롤러를 통해서 텍스트의 값을 가지고 온다.
          // 1. value가 들어옴
          // 2. value로 유효성 검사하기
          // 3. 리턴
          // null을 리턴할 수 있다. -> 유효성검사 통과
          // 메세지를 리턴할 수 있다. -> 유효성검사 실패
          validator: validate,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
