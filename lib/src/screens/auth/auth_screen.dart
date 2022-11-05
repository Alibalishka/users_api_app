import 'package:flutter/material.dart';
import 'package:users_api/src/common/constants/padding_constant.dart';
import 'package:users_api/src/router/routing_constant.dart';

import '../../common/widgets/custom_button.dart';
import '../../common/widgets/custom_text.dart';
import '../../common/widgets/custom_text_field.dart';
import '../../common/widgets/diagonal_image.dart';


class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8E9ED),
      body: Stack(
        children: [
          const DiagonalCustomImage(url: 'assets/image/bg.png'),
          const Padding(
            padding: AppPaddings.primary,
            child: CustomText(txt: 'Вход'),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 327,
              height: 348,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:  [
                  const Spacer(),
                  const Padding(
                    padding: AppPaddings.horizontal,
                    child: CustomTextField(label: 'Email'),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: AppPaddings.horizontal,
                    child: CustomTextField(label: 'Пароль'),
                  ),
                  const Spacer(),
                  Padding(
                    padding: AppPaddings.horizontal,
                    child:  CustomButton(onPressed: () => Navigator.pushNamed(context, ContactsRoute)),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}