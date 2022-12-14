import 'package:flutter/material.dart';

class CenterCircleProgIndicator extends StatelessWidget {
  const CenterCircleProgIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: Color(0xff9B51E0),),
    );
  }
}