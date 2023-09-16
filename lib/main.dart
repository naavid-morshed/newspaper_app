import 'package:flutter/material.dart';
import 'package:newspaper_app/Screens/picker_page.dart';
import 'package:newspaper_app/Screens/log_in_page.dart';
import 'Screens/sign_in_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/sign-in-page',
      routes: {
        '/sign-in-page': (context) => SignInPage(),
        '/login-page': (context) => LogInPage(),
        '/picker-page': (context) => const PickerPage(),
      },
    );
  }
}
