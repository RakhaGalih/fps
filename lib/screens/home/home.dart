import 'package:flutter/material.dart';
import 'package:fps/components/card_bawah.dart';
import 'package:fps/components/card_home.dart';
import 'package:fps/constants/constant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final List<String> _category = ['All', 'Kursi', 'Meja', 'Dekorasi'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //top navbar
          SizedBox(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [unguGelap.withOpacity(0.66), unguGelap]),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 10, 24, 15),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, '/login');
                              },
                              child: CircleAvatar(
                                radius: 25,
                                child: Image.asset('images/profile.png'),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hi Lala! ',
                                  style: kRegularTextStyle.copyWith(
                                      color: Colors.white),
                                ),
                                Text(
                                  'Cari Vendor Untuk Acaramu',
                                  style: kRegularTextStyle.copyWith(
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset('images/notification.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                //search bar
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 75, 24, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 15),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: abuGaris),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Search vendor',
                      ),
                      style: kRegularTextStyle,
                    ),
                  ),
                )
              ],
            ),
          ),
          //list view
          SizedBox(
            height: 120,
            child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 15),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: CardHome(),
                    ),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            padding: const EdgeInsets.only(left: 25, right: 5),
            width: double.infinity,
            height: 145,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [unguGelap.withOpacity(0.66), unguGelap]),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bingung apa aja yang perlu kamu siapin? Konsultasikan kebutuhan acaramu dengan tauvendor',
                        style: kMediumTextStyle.copyWith(
                            fontSize: 12, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Tanya Tauvendor',
                          style: kMediumTextStyle.copyWith(
                              fontSize: 10, color: unguGelap),
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset('images/illustration.png')
              ],
            ),
          ),
          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Penyewaan Populer',
                    style: kSemiBoldTextStyle.copyWith(fontSize: 24),
                  ),
                ),
                Image.asset('images/arrow-right.png'),
              ],
            ),
          ),
          //kategori
          SizedBox(
            height: 30,
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                scrollDirection: Axis.horizontal,
                itemCount: _category.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 5),
                        decoration: BoxDecoration(
                            color: (_selectedIndex == index) ? unguGelap : abu,
                            borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          _category[index],
                          style: kRegularTextStyle.copyWith(
                              fontSize: 12,
                              color: (_selectedIndex == index)
                                  ? Colors.white
                                  : abuText),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          //card bawah
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    //ganti setiap kolom ini dengan index genap di list
                    children: [
                      CardBawah(
                          judul: 'Sound System',
                          image: 'images/sound.png',
                          harga: 'Rp.200.000/hari'),
                      SizedBox(
                        height: 15,
                      ),
                      CardBawah(
                          judul: 'Dekor minimalis',
                          image: 'images/dekor.png',
                          harga: 'Rp 1.000.000/hari')
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    children: [
                      CardBawah(
                          judul: '20 Kursi Futura',
                          image: 'images/kursi.png',
                          harga: 'Rp 300.000/hari'),
                      SizedBox(
                        height: 15,
                      ),
                      CardBawah(
                          judul: 'Set kursi+meja',
                          image: 'images/kursimeja.png',
                          harga: 'Rp 350.000/hari')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
