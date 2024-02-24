import 'dart:math';

import 'package:flutter/material.dart';

class LaporanWidget extends StatefulWidget {
  const LaporanWidget({super.key});

  @override
  State<LaporanWidget> createState() => _LaporanWidgetState();
}

class _LaporanWidgetState extends State<LaporanWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 25.0,
                width: 25.0,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffD9D9D9)),
                margin: const EdgeInsets.only(right: 10),
              ),
              const Text(
                "anonymous",
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color(0x807560EE),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                width: 52,
                height: 18,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 6),
                child: const Text(
                  "XI SIJA 1",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            decoration: const BoxDecoration(
              color: Color(0xff404040),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            width: 368,
            child: const Text(
              "Lorem ipsum dolor sit amet consectetur. Morbi morbi ut rutrum accumsan mauris egestas justo eget. Id ut habitasse massa accumsan eu magna eget tincidunt. Ac aenean mollis turpis sed eget.",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 12),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffFF8400),
                borderRadius: BorderRadius.all(Radius.circular(4))),
            width: 74,
            height: 22,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 6),
            child: const Text(
              "keamanan",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
