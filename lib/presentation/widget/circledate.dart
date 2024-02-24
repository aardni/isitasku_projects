import 'package:flutter/material.dart';

class CircleDate extends StatelessWidget {
  const CircleDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Senin",
          style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins'),
        ),
        SizedBox(
          height: 4,
        ),
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Color(0xff1DABD7),
          child: Text(
            "19",
            style: TextStyle(
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
