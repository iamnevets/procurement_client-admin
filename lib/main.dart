import 'package:flutter/material.dart';
import 'package:procurement/view/dashboard/dashboard.view.dart';
import 'package:procurement/view/home.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Procurement App / Admin',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF6F6F6),
          fontFamily: 'Product',
          colorScheme: ColorScheme(
              primary: Color(0xFF3E9CB0),
              primaryVariant: Color(0xFF367A89),
              secondary: Color(0xFF003961),
              secondaryVariant: Color(0xFF05263E),
              surface: Color(0xFFDFDFDF),
              background: Color(0xFFF6F6F6),
              error: Color(0xFFEB1818),
              onPrimary: Color(0xFFDFDFDF),
              onSecondary: Color(0xFFDFDFDF),
              onSurface: Color(0xFF05263E),
              onBackground: Color(0xFF05263E),
              onError: Color(0xFFDFDFDF),
              brightness: Brightness.light)),
      home: DashboardView(),
    );
  }
}