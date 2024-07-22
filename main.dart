
import 'package:flutter/material.dart';
import 'package:grocery/screens/splash_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


/*
import 'package:flutter/material.dart';
import 'package:grocery/models/cart_model.dart';
import 'package:grocery/screens/splash_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
       create: (context) => CartModel(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
         theme: ThemeData.light(), // Default light theme
        darkTheme: ThemeData.dark(), // Default dark theme
        home: SplashScreen(),
      ),
    );
  }
}

 */


