import 'package:course_news_app/screens/home_page.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

        fontFamily: 'Montserrat',

        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold, color: Colors.black),
          displayMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500 , color: Colors.black54),
          displaySmall: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500, color:Colors.black54),
          bodyLarge: TextStyle(fontSize: 34 , fontWeight: FontWeight.w700, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      debugShowCheckedModeBanner:false,
      home: const HomePage(),
    );
  }
}