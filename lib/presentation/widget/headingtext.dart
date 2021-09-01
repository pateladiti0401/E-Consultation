import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String? title;
  const HeadingText({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          '$title :',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
