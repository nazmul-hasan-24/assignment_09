import 'package:assignment_09/Home_Page/home_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white ,
          iconButtonTheme: IconButtonThemeData(
            style: ButtonStyle(
              // backgroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
                elevation: const MaterialStatePropertyAll<double>(10),
                padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
                    EdgeInsets.zero),
                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
          ),
           useMaterial3: true,
        ),
        home: HomePage(
          title: "Assignment 09",
        ));
  }
}
