import 'package:flutter/material.dart';
import 'package:fps/components/app_bar.dart';
import 'package:fps/components/profile_tile.dart';
import 'package:fps/constants/constant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [Image.asset('images/bg.png')],
          ),
          SafeArea(
            child: Column(
              children: [
                MyCustomAppBar(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    title: 'Akun'),
                Image.asset(
                  'images/profile.png',
                  width: 120,
                  height: 120,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Lala',
                  style: kMediumTextStyle.copyWith(fontSize: 20),
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    Text(
                      'Profile',
                      style: kMediumTextStyle.copyWith(fontSize: 14),
                    ),
                    const Spacer(),
                    Text('Edit Profil',
                        style: kRegularTextStyle.copyWith(
                            fontSize: 14, color: biru)),
                    const SizedBox(
                      width: 24,
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: abuPutih, width: 1)),
                  child: const Column(
                    children: [
                      ProfileTile(title: 'Username', value: 'Lala'),
                      ProfileTile(
                          title: 'No.telepon atau email',
                          value: '+6281222333444'),
                      ProfileTile(title: 'Password', value: '••••••••••'),
                      ProfileTile(
                          title: 'Alamat',
                          value: 'Jl.Sukabirus no.4, Kec.Bojongsoang'),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
