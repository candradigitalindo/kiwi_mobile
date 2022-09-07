import 'package:flutter/material.dart';
import 'package:kiwi_mobile/shared/theme.dart';
import 'package:kiwi_mobile/view/guest/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightBackgroundColor,
          elevation: 0,
        ),
      ),
      home: const GuestHomePage(),
    );
  }
}
