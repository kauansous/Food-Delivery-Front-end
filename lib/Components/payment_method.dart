// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethodApp extends StatefulWidget {
  String? ImagemMetodoPagamento;
  String? NomeMetodoPagamento;
  int? number;

  PaymentMethodApp(this.ImagemMetodoPagamento, this.NomeMetodoPagamento,this.number,{Key? key}) : super(key: key);

  @override
  State<PaymentMethodApp> createState() => _PaymentMethodAppState();
}

class _PaymentMethodAppState extends State<PaymentMethodApp> {
  int valor = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListTile(
        title: Row(
          children: [
            Image.asset(
              widget.ImagemMetodoPagamento!,
              width: 32,
              height: 32,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              widget.NomeMetodoPagamento!,
              style: GoogleFonts.poppins(
                  fontSize: 12, color: const Color(0xFF2B2D33)),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(child: Container()),
            Radio(
              value: widget.number!, 
              groupValue: valor, 
              onChanged: (int ? value){
                setState(() {
                  valor = value!;
                });
              },
              activeColor: const Color(0xFFFDC27A),
            ),
          ],
        ),
      ),
    );
  }
}
