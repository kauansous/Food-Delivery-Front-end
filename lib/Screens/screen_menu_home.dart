import 'package:flutter/material.dart';
import 'package:food_delivery/Components/food_option.dart';
import 'package:food_delivery/Components/type_food_option.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenMenuHome extends StatelessWidget {
  const ScreenMenuHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    "Let's eat\nQuality food",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF104E5B)),
                  ),
                  const SizedBox(
                    width: 87,
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
                  TypeFoodOption("Fast food", const Color(0xFFFDC27A)),
                  TypeFoodOption("Vegetarian", Colors.white),
                  TypeFoodOption("Drink", Colors.white),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FoodOption("assets/image/GrilledFish.png", "Grilled Fish",
                      "Spicy grilled fish", 8.50),
                  FoodOption("assets/image/FriedChicken.png", "Fried Chicken",
                      "Spicy fried chicken", 7.50),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FoodOption("assets/image/FriedNoodle.png", "Fried Noodle",
                      "Spicy fried noodle", 6.50),
                  FoodOption("assets/image/FriedRice.png", "Fried Rice",
                      "Spicy fried rice", 4.50),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
