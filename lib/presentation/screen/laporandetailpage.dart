import 'package:flutter/material.dart';

class LaporanDetailPage extends StatefulWidget {
  const LaporanDetailPage({super.key});

  @override
  State<LaporanDetailPage> createState() => _LaporanDetailPageState();
}

class _LaporanDetailPageState extends State<LaporanDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff1E1E1E),
          centerTitle: true,
          actions: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xff7560EE),
                  borderRadius: BorderRadius.all(Radius.circular(32))),
              width: 88,
              height: 30,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 6),
              child: const Text(
                "Posting",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: IconButton(
                iconSize: 25,
                onPressed: () {},
                color: Colors.white,
                icon: const Icon(Icons.close)),
          ),
        ),
        body: Container(
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
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
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
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                width: 368,
                height: 275,
                child: const Text(
                  "Lorem ipsum dolor sit amet consectetur. Morbi morbi ut rutrum accumsan mauris egestas justo eget. Id ut habitasse massa accumsan eu magna eget tincidunt. Ac aenean mollis turpis sed eget.",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Pilih Kategori",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Color(0xff39B5E0),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        width: 74,
                        height: 22,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 6),
                        child: const Text(
                          "kebersihan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffFF5F9E)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4))),
                        width: 74,
                        height: 22,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 6),
                        child: const Text(
                          "fasilitas",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffFF8400)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4))),
                        width: 74,
                        height: 22,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 6),
                        child: const Text(
                          "keamanan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff35A29F)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4))),
                        width: 74,
                        height: 22,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 6),
                        child: const Text(
                          "kesiswaan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
