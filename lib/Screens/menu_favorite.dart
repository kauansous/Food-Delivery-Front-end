import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Components/food_option.dart';
import '../Components/type_food_option.dart';

class MenuFavoriteApp extends StatelessWidget {
  const MenuFavoriteApp({Key? key}) : super(key: key);

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
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Let's eat\nFavorite food",
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF104E5B)),
                    ),
                    const SizedBox(
                      width: 78,
                    ),
                    ClipOval(
                      child: Image.asset(
                        "assets/image/Perfil.png",
                        width: 54,
                        height: 45.77,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 241,
                        height: 34,
                        child: TextField(
                          cursorColor: Colors.black,
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: const Color(0xFF104E5B),
                              fontWeight: FontWeight.normal),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xFF104E5B),
                            ),
                            hintText: "Search food...",
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ClipOval(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 33,
                              color: const Color(0xFFFDC27A),
                            ),
                            Image.asset(
                              "assets/image/Ajuste.png",
                              width: 20,
                              height: 25,
                              color: const Color(0xFF104E5B),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TypeFoodOption("Spicy", const Color(0xFFFDC27A)),
                    TypeFoodOption("Salty", Colors.white),
                    TypeFoodOption("Sour", Colors.white),
                  ],
                ),
                const SizedBox(height: 20),
                Stack(
                  children: [
                    Container(
                      width: 289,
                      height: 122,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE3C0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 18, left: 23, bottom: 18),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/image/Ilustração.png",
                            width: 126,
                            height: 90,
                          ),
                          SizedBox(
                            height: 90,
                            child: Column(
                              children: [
                                Text(
                                  'Free delivery',
                                  style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF104E5B),
                                  ),
                                ),
                                Text(
                                  'May 10 - June 21',
                                  style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF616F80),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TypeFoodOption(
                                    "Order Now", const Color(0xFFFDC27A)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Your Favorite',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF104E5B),
                      ),
                    ),
                    const SizedBox(width: 78,),
                    Container(
                      width: 80,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xFF616F80),width: 2),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'See more',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF104E5B),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FoodOption("assets/image/FriedChicken.png", "Fried Chicken","Spicy fried chicken", 7.50),
                    FoodOption("assets/image/FriedRice.png", "Fried Rice","Spicy fried rice", 4.50),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
