import 'package:demo/invoice_app_ui/screens/profile_screen/profile_screen.dart';
import 'package:demo/invoice_app_ui/screens/wallet_screen/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBars extends StatefulWidget {
  const BottomNavBars({Key? key}) : super(key: key);
  static String bottomNavBar = "bottomNavBar";

  @override
  State<BottomNavBars> createState() => _BottomNavBarsState();
}

class _BottomNavBarsState extends State<BottomNavBars> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> items = [
    Container(),
    Container(),
    WalletScreen(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 80,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius:2),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            iconSize: 25,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.grid_view_rounded), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.gift,
                    size: 20,
                  ),
                  label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: ""),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue.shade900,
            unselectedItemColor: Colors.grey,
            onTap: _onItemTapped,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
          ),
        ),
        body: items[_selectedIndex],
      ),
    );
  }
}
