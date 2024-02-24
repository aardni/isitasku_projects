import 'package:flutter/material.dart';

import '../widget/bukupaketcard.dart';
import '../widget/circledate.dart';
import '../widget/progressjadwal.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232323),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Halo, Arbian Indra',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins'),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 22,
                          width: 100,
                          decoration: BoxDecoration(
                              color: const Color(0x807560EE),
                              borderRadius: BorderRadius.circular(6)),
                          child: const Text(
                            "Kelas XI SIJA 1",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                          ),
                        )
                      ],
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 23,
                    )
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleDate(),
                    CircleDate(),
                    CircleDate(),
                    CircleDate(),
                    CircleDate()
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  children: [
                    Text(
                      "Jadwal Pelajaran",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const ProgressJadwal(),
                const ProgressJadwal(),
                const ProgressJadwal(),
                const ProgressJadwal(),
                const ProgressJadwal(),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Buku Paket Hari Ini",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
                ),
                const SizedBox(
                  height: 25,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BukuPaketCard(),
                      BukuPaketCard(),
                      BukuPaketCard(),
                      BukuPaketCard(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
