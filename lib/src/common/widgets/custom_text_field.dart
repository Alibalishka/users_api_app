import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: label == 'Пароль' ? true : false,
      cursorColor: const Color(0xff9B51E0),
      decoration:  InputDecoration(
        labelText: label,
        floatingLabelStyle: const TextStyle(
          color: Color(0xff9B51E0),
        ),
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffD8D8D8)),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff828282)),
        )
      ),
    );
  }
}