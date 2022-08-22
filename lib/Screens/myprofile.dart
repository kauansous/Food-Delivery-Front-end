import 'package:flutter/material.dart';
import 'package:food_delivery/Components/payment_method.dart';
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
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            "assets/image/Perfil.png",
                            height: 45.77,
                            width: 54,
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
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 71,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Account",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: const Color(0xFF2B2D33)),
                            ),
                          ),
                        ),
                        Container(
                          width: 71,
                          padding: const EdgeInsets.only(bottom: 2),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Color(0xFFFDC27A), width: 2),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Payment",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: const Color(0xFF2B2D33)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 71,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "History",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: const Color(0xFF2B2D33)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "My Card",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF104E5B),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 240,
                      height: 123,
                      decoration: BoxDecoration(
                        color: const Color(0xFF9C9C9C),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 150),
                            child: Image.asset(
                              "assets/image/Amazon.png",
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 8),
                            padding: const EdgeInsets.only(left: 25, top: 7),
                            width: double.infinity,
                            height: 21,
                            color: const Color(0xFF104E5B),
                            child: Text(
                              "Achmad Qomarudin",
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "5763  ••••  ••••  2021",
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 130),
                            child: Image.asset(
                              "assets/image/MasterCard.png",
                              width: 32,
                              height: 32,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$3.464.98",
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Platinum Card",
                                    style: GoogleFonts.poppins(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    focusColor: Colors.white,
                    shape: const StadiumBorder(
                      side: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    backgroundColor: const Color(0xFFFDC27A),
                    mini: true,
                    child: const Icon(
                      Icons.add,
                      color: Color(0xFF104E5B),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10, left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Payment Method",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF104E5B),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 240,
                      height: 123,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0,4),
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 15,
                          ),
                        ]
                      ),
                      child: Column(
                        children: [
                          PaymentMethodApp("assets/image/MasterCard.png","Credit Card",1),
                          PaymentMethodApp("assets/image/Paypal.png","Paypal",2),  
                          PaymentMethodApp("assets/image/GooglePay.png","Google Pay",3),     
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    focusColor: Colors.white,
                    shape: const StadiumBorder(
                      side: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    backgroundColor: const Color(0xFFFDC27A),
                    mini: true,
                    child: const Icon(
                      Icons.add,
                      color: Color(0xFF104E5B),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
