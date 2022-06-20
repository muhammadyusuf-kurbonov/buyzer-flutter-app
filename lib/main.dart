import 'package:buyzer/lists_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: GoogleFonts.rubik().fontFamily,
      textTheme: const TextTheme(
        headline4: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontFamily: 'Rubik',
          fontSize: 26
        ),
        headline6: TextStyle(
          color: Colors.black,
          fontFamily: 'Rubik',
          fontSize: 16
        ),
        subtitle1: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontFamily: 'Rubik'
        ),
      )
    ),
    home: const Scaffold(
      backgroundColor: Color(0xFFf9fbfd),
      body: SafeArea(top: false, child: ListsScreen()),
    ),
  ));
}
