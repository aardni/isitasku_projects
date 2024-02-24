import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isitasku_project/presentation/screen/laporanwidget.dart';

class LaporanPage extends StatefulWidget {
  const LaporanPage({super.key});

  @override
  State<LaporanPage> createState() => _LaporanPageState();
}

class _LaporanPageState extends State<LaporanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 60),
              child: Container(
                height: 46,
                width: 368,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xff404040)),
                child: const CupertinoSearchTextField(
                  backgroundColor: Color(0xff404040),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30, top: 22),
              child: LaporanWidget(),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              width: double.infinity,
              height: 1.5,
              color: const Color(0xff404040),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30, top: 22),
              child: LaporanWidget(),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              width: double.infinity,
              height: 1.5,
              color: const Color(0xff404040),
            ),
          ],
        ),
        floatingActionButton: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            child: const Icon(
              Icons.add,
              size: 40,
            ),
          ),
        ));
  }
}
