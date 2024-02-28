import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isitasku_project/bloc/jadwal/jadwal_bloc.dart';
import 'package:isitasku_project/presentation/widget/listjadwal_widget.dart';

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
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Colors.white,
                icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          ),
        ),
        body: BlocBuilder<JadwalBloc, JadwalState>(
          builder: (context, state) {
            if (state is JadwalLoaded) {
              return ListView.builder(
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(15),
                          padding: const EdgeInsets.all(15),
                          height:
                              73 * state.data[index].jadwal!.length.toDouble(),
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
                                child: Text(
                                  state.data[index].hari!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                              Column(
                                children:
                                    state.data[index].jadwal!.map<Widget>((e) {
                                  return SizedBox(
                                      height: 60,
                                      child: Column(
                                        children: [
                                          ListJadwalWidget(
                                              jamPelajaran: e.jam.toString(),
                                              mapel: e.mapel.toString(),
                                              jam: e.jam.toString())
                                        ],
                                      ));
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  });
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
