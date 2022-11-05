import 'package:flutter/cupertino.dart';

class CustomPersonIcon extends StatelessWidget {
  const CustomPersonIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      CupertinoIcons.profile_circled,
      size: 50,
    );
  }
}