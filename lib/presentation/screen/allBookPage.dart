import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isitasku_project/bloc/book/book_bloc.dart';
import 'package:isitasku_project/presentation/screen/bukupaketdetail.dart';
import 'package:isitasku_project/presentation/widget/bukupaketcard.dart';

class AllBookPage extends StatefulWidget {
  const AllBookPage({super.key});

  @override
  State<AllBookPage> createState() => _AllBookPageState();
}

class _AllBookPageState extends State<AllBookPage> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<BookBloc>().add(GetBookEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Daftar Buku Paket",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins'),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30, top: 30),
            child: SearchBar(),
          ),
          Expanded(
            child: BlocBuilder<BookBloc, BookState>(
              builder: (context, state) {
                if (state is BookLoaded) {
                  return GridView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      childAspectRatio: 0.9,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BukuPaketDetail()));
                        },
                        child: BukuPaketCard(
                          judul: state.data[index].mapel.toString(),
                          kelas: state.data[index].kelas.toString(),
                        ),
                      );
                    },
                    itemCount: state.data.length,
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
