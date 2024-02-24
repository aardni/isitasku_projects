import 'package:flutter/material.dart';

class JadwalPage extends StatefulWidget {
  const JadwalPage({super.key});

  @override
  State<JadwalPage> createState() => _JadwalPageState();
}

class _JadwalPageState extends State<JadwalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232323),
      appBar: AppBar(
        backgroundColor: const Color(0xff232323),
        centerTitle: true,
        title: const Text(
          "Jadwal Pengajaran",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins'),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(15),
                height: 368,
                width: 364,
                decoration: BoxDecoration(
                    color: const Color(0xff404040),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: 36,
                      width: 82,
                      decoration: BoxDecoration(
                          color: const Color(0xff35A29F),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Text(
                        "Senin",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    const ListJadwalWidget(),
                    const ListJadwalWidget(),
                    const ListJadwalWidget(),
                    const ListJadwalWidget(),
                    const ListJadwalWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListJadwalWidget extends StatelessWidget {
  const ListJadwalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jam Pelajaran 1",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
              ),
              Text(
                "Bahasa Indonesia",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
            ],
          ),
          Text(
            "07.00 - 08.30",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins'),
          ),
        ],
      ),
    );
  }
}
