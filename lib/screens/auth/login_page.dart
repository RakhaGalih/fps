import 'package:flutter/material.dart';
import 'package:fps/constants/constant.dart';

import '../../components/continue_card.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  bool isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/logo.png'),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Selamat Datang',
                      style: kTitleTextStyle,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 20),
                          filled: true,
                          fillColor: abu,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          hintText: 'Username'),
                      style: kRegularTextStyle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: isObscured,
                      autofocus: true,
                      decoration: InputDecoration(
                          focusColor: ungu,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 20),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isObscured = !isObscured;
                                });
                              },
                              child: Icon((isObscured)
                                  ? Icons.visibility_off
                                  : Icons.visibility)),
                          filled: true,
                          fillColor: abu,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          hintText: 'Password'),
                      style: kRegularTextStyle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                            color: unguGelap,
                            borderRadius: BorderRadius.circular(40)),
                        child: Text(
                          'Login',
                          style: kMediumTextStyle.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 2,
                          color: abuGaris,
                        )),
                        Padding(
                          padding: const EdgeInsets.all(18),
                          child: Text(
                            'atau lanjut dengan',
                            style: kMediumTextStyle.copyWith(color: abuText),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          height: 2,
                          color: abuGaris,
                        )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ContinueCard(
                          child: Image.asset('images/facebook.png'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ContinueCard(
                          child: Image.asset('images/google.png'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ContinueCard(
                          child: Image.asset('images/apple.png'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Belum punya akun? ',
                    style:
                        kMediumTextStyle.copyWith(fontSize: 15, color: abuText),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/signIn');
                    },
                    child: Text(
                      'Buat akun',
                      style: kMediumTextStyle.copyWith(
                          fontSize: 15, color: unguGelap),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
