import 'package:flutter/material.dart';

import 'pages/about_page.dart';
import 'pages/contact_page.dart';
import 'pages/home_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

/// Root widget of the application.
/// Defines the theme and the named routes used for navigation.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String homeRoute = '/';
  static const String aboutRoute = '/about';
  static const String contactRoute = '/contact';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: homeRoute,
      routes: {
        homeRoute: (context) => const HomePage(),
        aboutRoute: (context) => const AboutPage(),
        contactRoute: (context) => const ContactPage(),
      },
    );
  }
}
