import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData mainMaterial() {
      return ThemeData(
        brightness: Brightness.light,
        primarySwatch: MaterialColor(
          Color.fromRGBO(84, 164, 148, 1).value,
          <int, Color>{
            50: Color(0xFFE1F5FE),
            100: Color(0xFFB3E5FC),
            200: Color(0xFF81D4FA),
            300: Color(0xFF4FC3F7),
            400: Color(0xFF29B6F6),
            500: Color(0xFF03A9F4),
            600: Color(0xFF039BE5),
            700: Color(0xFF0288D1),
            800: Color(0xFF0277BD),
            900: Color(0xFF01579B),
          },
    ),
        // primaryColor: Color.fromARGB(255, 83, 189, 2),
        fontFamily: GoogleFonts.pressStart2p().fontFamily,
        // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color.fromARGB(255, 83, 189, 2)),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.red,
          shape: RoundedRectangleBorder(),
          textTheme: ButtonTextTheme.accent
        ),
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