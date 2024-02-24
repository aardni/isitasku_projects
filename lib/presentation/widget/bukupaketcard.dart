import 'package:flutter/material.dart';

class BukuPaketCard extends StatelessWidget {
  const BukuPaketCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        height: 190,
        width: 140,
        decoration: BoxDecoration(
            color: const Color(0xff404040),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              width: 122,
              height: 122,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                "assets/images/bukupaket.png",
                width: 120.0,
                height: 120.0,
                scale: 8,
              ),
            ),
            const Text(
              "Bahasa Indonesia",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins'),
            ),
            const Text(
              "Kelas XI",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins'),
            ),
          ],
        ),
      ),
    );
  }
}
