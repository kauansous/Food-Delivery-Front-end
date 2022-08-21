// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_line/dotted_line.dart';

// ignore: must_be_immutable
class ProfileNotification extends StatelessWidget {
  String? Foto;
  String? Nome;
  String? ID;
  String? Tempo;
  String? Endereco;

  ProfileNotification(this.Foto,this.Nome, this.ID, this.Tempo, this.Endereco, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      width: 302,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              color: Colors.black.withOpacity(0.05),
              blurRadius: 15,
            ),
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    width: 50,
                    height: 42,
                    child: Image.asset(
                      Foto!,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Nome!,
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF104E5B),
                      ),
                    ),
                    Text(
                      ID!,
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF616F80),
                      ),
                    ),
                    Text(
                      "Food courier",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFBEBEBE),
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: const Color(0xFFFDC27A),
                    width: 50,
                    height: 42,
                    child: Image.asset(
                      "assets/image/Telefone.png",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const DottedLine(
            direction: Axis.horizontal,
            dashColor: Colors.grey,
            lineLength: double.infinity,
            lineThickness: 1,
            dashLength: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: const Color(0xFFFDC27A),
                    width: 30,
                    height: 25,
                    child: Image.asset(
                      "assets/image/Time.png",
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Delivery Time",
                      style: GoogleFonts.poppins(
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF616F80),
                      ),
                    ),
                    Text(
                      Tempo!,
                      style: GoogleFonts.poppins(
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF104E5B),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: const Color(0xFFFDC27A),
                    width: 30,
                    height: 25,
                    child: Image.asset(
                      "assets/image/Gps.png",
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Delivery Address",
                      style: GoogleFonts.poppins(
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF616F80),
                      ),
                    ),
                    Text(
                      Endereco!,
                      style: GoogleFonts.poppins(
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF104E5B),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
