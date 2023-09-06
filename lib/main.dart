import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gr_assignment/controller.dart';
import 'package:gr_assignment/views/new_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context)
                .textTheme
                .copyWith(
                  bodySmall: const TextStyle(),
                )
                .apply(
                  bodyColor: Colors.black,
                ),
          ),
          iconTheme: const IconThemeData(color: Colors.white)),
      home: const NewTask(),
      initialBinding: InitialBinding(),
    );
  }
}

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NewTaskController());
  }
}
