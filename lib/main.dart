import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fps/constants/constant.dart';
import 'package:fps/screens/auth/login_page.dart';
import 'package:fps/screens/auth/sign_in.dart';
import 'package:fps/screens/home/home_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/signIn': (context) => const SignInPage(),
        '/home': (context) => const HomePage(),
      },
      theme: ThemeData(
          fontFamily: "Poppins",
          primaryColor: ungu,
          primarySwatch: Colors.indigo,
          hoverColor: ungu,
          focusColor: ungu),
    );
  }
}
