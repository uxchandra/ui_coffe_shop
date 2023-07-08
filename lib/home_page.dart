import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: "Tersimpan"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ]),
        body: SafeArea(
            child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 140,
                  width: double.infinity,
                  color: Colors.brown,
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                      'https://oliver-andersen.se/wp-content/uploads/2018/03/cropped-Profile-Picture-Round-Color.png',
                                    )),
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 2,
                                    )),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Halo Chan, Selamat Datang !',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.notifications_active,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        )));
  }
}
