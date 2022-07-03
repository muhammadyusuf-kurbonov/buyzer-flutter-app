import 'package:buyzer/lists_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: GoogleFonts.rubik().fontFamily,
      textTheme: TextTheme(
        headline4: GoogleFonts.rubik(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 26),
        headline6: GoogleFonts.rubik(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          height: 1.5
        ),
        subtitle1:
            GoogleFonts.rubik(color: Colors.black, fontSize: 12, height: 1.5),
        bodyText1: GoogleFonts.rubik(
          color: Colors.black,
          fontSize: 15,
        ),
        headline1: GoogleFonts.rubik(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.32,
            height: 1.1,
            fontSize: 24),
      ),
    ),
    home: Scaffold(
      backgroundColor: const Color(0xFFf9fbfd),
      body: ListsScreen(),
    ),
  ));
}
