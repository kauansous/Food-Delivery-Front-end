import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodOption extends StatelessWidget {
  const FoodOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 130,
          height: 170,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 4),
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 15,
                ),
              ]),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  width: 111,
                  height: 73,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)
                    ),
                  ),
                  child: Image.asset(
                    "assets/image/GrilledFish.png",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 7,right: 7),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFDC27A),
                      borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10)
                      ),
                    ),
                    child: Image.asset(
                      "assets/image/Heart.png",
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Grilled Fish",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF104E5B)),
            ),
            Text(
              "Spicy grilled fish",
              style: GoogleFonts.poppins(
                  fontSize: 8,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xFF616F80)),
            ),
            SizedBox(
              width: 125,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF99C932)),
                  ),
                  Text(
                    "8.50",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF104E5B)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
