import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  String title;
  Logo(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset("assets/logo.svg", width: 70, height: 70),
        Text(
          "$title",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
