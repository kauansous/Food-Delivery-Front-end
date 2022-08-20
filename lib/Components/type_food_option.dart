// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TypeFoodOption extends StatelessWidget {
  String Option;
  Color ? cor;
  TypeFoodOption(this.Option, this.cor,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 25,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(cor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)))),
        onPressed: () {},
        child: FittedBox(
          child: Text(
            Option,
            style: GoogleFonts.poppins(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF104E5B)),
          ),
        ),
      ),
    );
  }
}
