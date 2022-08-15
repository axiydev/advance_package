import 'dart:math';

import 'package:flutter/material.dart';

class SimpleWidget extends StatelessWidget {
  final String? data;
  SimpleWidget({super.key, required this.data});
  final List<Color?> _colorList = [
    const Color(0xFFB0E5E3),
    const Color(0xFFD6B7A6),
    const Color(0xFFA9E1C9)
  ];

  @override
  Widget build(BuildContext context) {
    final random = Random();
    return Card(
      color: _colorList[random.nextInt(_colorList.length)],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        tileColor: _colorList[random.nextInt(_colorList.length)],
        title: Text(data!),
      ),
    );
  }
}
