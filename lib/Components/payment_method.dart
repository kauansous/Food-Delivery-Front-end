// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethodApp extends StatefulWidget {
  const PaymentMethodApp({Key? key}): super(key: key);

  @override
  State<PaymentMethodApp> createState() => _PaymentMethodAppState();
}

class _PaymentMethodAppState extends State<PaymentMethodApp> {
  int valor = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 32,
          child: ListTile(
            title: Row(
              children: [
                Image.asset("assets/image/MasterCard.png",width: 32,height: 32,),
                const SizedBox(width:10,),
                Text(  "Credit Card",  style: GoogleFonts.poppins(      fontSize: 12, color: const Color(0xFF2B2D33)),),
                const SizedBox(width: 10,),
                Expanded(child: Container()),
                Radio(value: 1,groupValue: valor,onChanged:(int? value){setState(() {valor = value!;});},activeColor: const Color(0xFFFDC27A),),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 32,
          child: ListTile(
            title: Row(
              children: [
                Image.asset("assets/image/Paypal.png",width: 32,height: 32,),
                const SizedBox(width:10,),
                Text("Paypal",  style: GoogleFonts.poppins(fontSize: 12, color: const Color(0xFF2B2D33)),),
                const SizedBox(width: 10,),
                Expanded(child: Container()),
                Radio(value: 2,groupValue: valor,onChanged:(int? value){setState(() {valor = value!;});},activeColor: const Color(0xFFFDC27A),),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 32,
          child: ListTile(
            title: Row(
              children: [
                Image.asset("assets/image/GooglePay.png",width: 32,height: 32,),
                const SizedBox(width:10,),
                Text("Google Pay",  style: GoogleFonts.poppins(fontSize: 12, color: const Color(0xFF2B2D33)),),
                const SizedBox(width: 10,),
                Expanded(child: Container()),
                Radio(value: 3,groupValue: valor,onChanged:(int? value){setState(() {valor = value!;});},activeColor: const Color(0xFFFDC27A),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
