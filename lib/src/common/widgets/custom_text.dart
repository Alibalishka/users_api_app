import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.txt
  }) : super(key: key);

  final String txt;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 34,
        fontWeight: FontWeight.bold
      ),
    );
  }
}