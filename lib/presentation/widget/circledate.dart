// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CircleDate extends StatelessWidget {
  const CircleDate({
    Key? key,
    required this.hari,
    required this.tanggal,
    required this.active,
  }) : super(key: key);

  final String hari;
  final String tanggal;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          hari,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins'),
        ),
        const SizedBox(
          height: 4,
        ),
        CircleAvatar(
          radius: 20.0,
          backgroundColor: active
              ? const Color(0xff1DABD7)
              : const Color.fromARGB(255, 20, 84, 104),
          child: Text(
            tanggal,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins'),
          ),
        ),
      ],
    );
  }
}
