import 'package:flutter/material.dart';

// ignore: camel_case_types
class bgImage extends StatelessWidget {
  const bgImage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/bg.jpeg",fit: BoxFit.cover,color: Colors.black.withOpacity(0.7),colorBlendMode: BlendMode.darken,);
  }
}