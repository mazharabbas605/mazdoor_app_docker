
import 'package:flutter/material.dart';
import 'welcome_page.dart';
import 'registration_page.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'settings_page.dart';



void main()  {

  runApp(MyApp());
}



// ...





class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mazdoor App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const WelcomePage(),
        '/login': (context) =>  LoginPage(),
        '/register': (context) =>  RegistrationPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) =>  ProfilePage(),
        '/settings': (context) =>  SettingsPage(),
      },
    );
  }
}
