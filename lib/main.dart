import 'package:first_web_app/pages/home.dart';
import 'package:first_web_app/utils/colors.dart';
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
      title: 'E-Levy Calculator | Mish Solutions',
      theme: ThemeData(    
        primaryColor: AppColors.primary  
      ),
      home: const Home(),
    );
  }
}

