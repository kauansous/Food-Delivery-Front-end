import 'package:flutter/material.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFFF2F6F7),
          border: Border.all(
            color: const Color(0xFF104E5B),
            width: 7,
          ),
        ),
      ),
    );
  }
}