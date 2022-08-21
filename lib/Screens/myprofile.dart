import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({Key? key}) : super(key: key);

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
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 211,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 4),
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 15)
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "My Profile",
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF104E5B)),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            "assets/image/Perfil.png",
                            height: 45.77,
                            width: 54,
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Achmad Qomarudin",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF104E5B),
                              ),
                            ),
                            Text(
                              "achmadprogrammer@gmail.com",
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF616F80),
                              ),
                            ),
                            Text(
                              "User ID : 37664872",
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF616F80),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
