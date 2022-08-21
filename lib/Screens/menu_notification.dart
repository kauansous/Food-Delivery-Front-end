import 'package:flutter/material.dart';
import 'package:food_delivery/Components/notification.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuNotification extends StatelessWidget {
  const MenuNotification({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.only(top: 20,left: 25,right: 25),
            child: Column(
              children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Notification",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF104E5B)
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              ProfileNotification("assets/image/Perfil1.png","Budi Sanjaya","ID : 78A6767","45 minutes","Tulungagung City"),
              const SizedBox(height: 20,),
              ProfileNotification("assets/image/Perfil2.png","Andi Hermansyah","ID : 87B5757","50 minutes","Kediri City"),
              const SizedBox(height: 20,),
              ProfileNotification("assets/image/Perfil3.png","Agung Prasetya","ID : 95C8686","55 minutes","Blitar City"),
            ],
          ),
        ),
      ),
    );
  }
}
