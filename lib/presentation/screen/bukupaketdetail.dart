import 'package:flutter/material.dart';

class BukuPaketDetail extends StatefulWidget {
  const BukuPaketDetail({super.key});

  @override
  State<BukuPaketDetail> createState() => _BukuPaketDetailState();
}

class _BukuPaketDetailState extends State<BukuPaketDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232323),
      appBar: AppBar(
        backgroundColor: const Color(0xff232323),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Colors.white,
              icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 19, bottom: 36),
              width: 160,
              height: 222,
              decoration: const BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0x807560EE),
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              width: 88,
              height: 25,
              alignment: Alignment.center,
              child: const Text(
                "Buku Paket",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 98),
              width: 215,
              child: const Text(
                "Bahasa Indonesia Kelas XI",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: 240,
              height: 54,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff7560EE))),
                onPressed: () {},
                child: const Text(
                  'Baca Sekarang',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 240,
              height: 54,
              margin: const EdgeInsets.only(top: 24),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff7A7A7A))),
                onPressed: () {},
                child: const Text(
                  'Download',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
