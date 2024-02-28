// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProgressJadwal extends StatelessWidget {
  const ProgressJadwal({
    Key? key,
    required this.mapel,
    required this.jam,
  }) : super(key: key);

  final String mapel;
  final String jam;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Column(
            children: [
              const CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Color(0xff1DABD7),
                  child: Text("1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'))),
              Container(
                height: 62,
                width: 4,
                color: const Color(0xff1DABD7),
              )
            ],
          ),
        ),
        Container(
          height: 70,
          width: 304,
          decoration: BoxDecoration(
              color: const Color(0xff7560EE),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(jam,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins')),
                const SizedBox(
                  height: 6,
                ),
                Text(mapel,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins')),
              ],
            ),
          ),
        )
      ],
    );
  }
}
