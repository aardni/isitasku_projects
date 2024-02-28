import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isitasku_project/bloc/laporan/laporan_bloc.dart';
import 'package:isitasku_project/presentation/screen/laporandetailpage.dart';
import 'package:isitasku_project/presentation/screen/laporanwidget.dart';

class LaporanPage extends StatefulWidget {
  const LaporanPage({super.key});

  @override
  State<LaporanPage> createState() => _LaporanPageState();
}

class _LaporanPageState extends State<LaporanPage> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<LaporanBloc>().add(GetLaporanEvent());

    super.initState();
  }

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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.783,
              child: BlocBuilder<LaporanBloc, LaporanState>(
                builder: (context, state) {
                  if (state is LaporanLoaded) {
                    return ListView.builder(
                      itemCount: state.data.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30.0, right: 30, top: 22),
                              child: LaporanWidget(
                                desc: state.data.reversed
                                    .toList()[index]
                                    .desc
                                    .toString(),
                                kategori: state.data.reversed
                                    .toList()[index]
                                    .kategori![0]
                                    .kategori
                                    .toString(),
                              ),
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
                        );
                      },
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            )
          ],
        ),
        floatingActionButton: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(
                      builder: (context) => const LaporanDetailPage()))
                  .then((value) => value
                      ? context.read<LaporanBloc>().add(GetLaporanEvent())
                      : null);
            },
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
