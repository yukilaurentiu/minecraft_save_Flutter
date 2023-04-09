import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData mainMaterial() {
      return ThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromARGB(255, 83, 189, 2),
        fontFamily: GoogleFonts.pressStart2p().fontFamily,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyMedium: TextStyle(fontSize: 14.0),
        ),
      );
}

// ThemeData material1() {
//       return ThemeData(
//         brightness: Brightness.light,
//         primaryColor: Color.fromARGB(255, 83, 189, 2),
//         fontFamily: 'Georgia',
//         textTheme: const TextTheme(
//           displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//           titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
//           bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
//         ),
//       );
// }