import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 355,
              height: 264,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/image/Logo.png",
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Corner Food",
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF104E5B)
                    ),
                  ),
                  Text(
                    "Delivery App",
                    style: GoogleFonts.poppins(
                      fontSize: 16, color: const Color(0xFF616F80)
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 131,
                        padding: const EdgeInsets.only(bottom: 12),
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(color: Color(0xFFFDC27A), width: 2))
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style: GoogleFonts.poppins(
                              fontSize: 18, color: const Color(0xFF2B2D33)),
                          ),
                        ),
                      ),
                      Container(
                        width: 131,
                        padding: const EdgeInsets.only(bottom: 12),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Signup",
                            style: GoogleFonts.poppins(
                              fontSize: 18, color: const Color(0xFF2B2D33)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 30,right: 30,bottom: 20),
              child: TextField(
                style: GoogleFonts.poppins(fontSize: 14, color: const Color(0xFF104E5B),fontWeight: FontWeight.normal),
                decoration: const InputDecoration(
                  labelText: "Email Address",
                  labelStyle: TextStyle(color: Color(0xFF616F80)),
                  hintText: "Enter your email",
                  contentPadding: EdgeInsets.all(5),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF104E5B)))
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 30,right: 30,bottom: 20),
              child: TextField(
                obscureText: true,
                style: GoogleFonts.poppins(fontSize: 14, color: const Color(0xFF104E5B),fontWeight: FontWeight.normal),
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey,),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Color(0xFF616F80)),
                  hintText: "Enter your password",
                  contentPadding: EdgeInsets.all(5),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF104E5B)))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF104E5B)
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100,),
            SizedBox(
              width: 248,
              height: 39,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xFFFDC27A)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder( borderRadius: BorderRadius.circular(40) ))
                ),
                onPressed: () => Navigator.pushReplacementNamed(context, '/menu_home'), 
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF2B2D33)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}