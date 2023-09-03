import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gr_assignment/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context)
                .textTheme
                .copyWith(
                  bodySmall: const TextStyle(),
                )
                .apply(
                  bodyColor: Colors.white,
                ),
          ),
          iconTheme: const IconThemeData(color: Colors.white)),
      home: const HomePage(),
    );
  }
}
