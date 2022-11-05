// ignore: import_of_legacy_library_into_null_safe
import 'package:clippy_flutter/diagonal.dart';
import 'package:flutter/cupertino.dart';

class DiagonalCustomImage extends StatelessWidget {
  const DiagonalCustomImage({
    Key? key,
    required this.url,
  }) : super(key: key);
  
  final String url;

  @override
  Widget build(BuildContext context) {
    return Diagonal(
      clipHeight: 100,
      child: SizedBox(
        width: double.infinity,
        child: Image.asset(url),
      ), 
    );
  }
}