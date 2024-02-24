import 'package:flutter/material.dart';
import 'package:isitasku_project/presentation/screen/allBookPage.dart';
import 'package:isitasku_project/presentation/screen/homepage.dart';
import 'package:isitasku_project/presentation/screen/laporanpage.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int currentindex = 0;
  final screens = [const HomePage(), const AllBookPage(), const LaporanPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentindex,
        children: screens,
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        // notchMargin: 8,
        color: const Color(0xff232323),
        elevation: 10,
        height: 76,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: currentindex,
          onTap: (value) {
            currentindex = value;
            setState(() {});
          },
          iconSize: 28,
          selectedLabelStyle: const TextStyle(
            color: Color(0xFF808080),
            fontSize: 10,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          unselectedLabelStyle: const TextStyle(
            color: Color(0xFF808080),
            fontSize: 10,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          selectedItemColor: const Color(0xff7560EE),
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/icon_home.png',
                scale: 20,
              ),
              label: 'Beranda',
              activeIcon: Image.asset(
                'assets/icons/icon_home_active.png',
                scale: 20,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/icon_book.png',
                scale: 23,
              ),
              label: 'Buku Paket',
              activeIcon: Image.asset(
                'assets/icons/icon_book_active.png',
                scale: 23,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/icon_laporan.png',
                scale: 20,
              ),
              label: 'Laporan',
              activeIcon: Image.asset(
                'assets/icons/icon_laporan_active.png',
                scale: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
