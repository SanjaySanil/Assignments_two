import 'package:demo/music_player_ui/home_screen/home_screen/home_screen_musify.dart';
import 'package:demo/music_player_ui/home_screen/playlist_screen/highlights_screne.dart';
import 'package:demo/music_player_ui/home_screen/search_screen/search_screen.dart';
import 'package:demo/music_player_ui/home_screen/settings_screen/settigs_screen.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  static String homeScree = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


int _selectedIndex = 0;

class _HomeScreenState extends State<HomeScreen> {

  List<Widget> bottomBarItems = [
    HomeScreenMusify(),
    SearchScreenMusify(),
    PlaylistsScreen(),
    SettingsScreenMusify()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "${_selectedIndex==2?"Playlists":"Musify"}",
          style:Theme.of(context).textTheme.headline2,
        ),
      ),
      bottomNavigationBar: FlashyTabBar(
        backgroundColor: Colors.black,
        selectedIndex: _selectedIndex,
        showElevation: true,
        iconSize: 25,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            activeColor: Colors.pink.shade100,
            inactiveColor: Colors.white,
            icon: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 18),
            ),
          ),
          FlashyTabBarItem(
            activeColor: Colors.pink.shade100,
            inactiveColor: Colors.white,
            icon: Icon(Icons.search),
            title: Text('Search', style: TextStyle(fontSize: 18)),
          ),
          FlashyTabBarItem(
            activeColor: Colors.pink.shade100,
            inactiveColor: Colors.white,
            icon: Icon(Icons.book),
            title: Text('Playlists', style: TextStyle(fontSize: 18)),
          ),
          FlashyTabBarItem(
            activeColor: Colors.pink.shade100,
            inactiveColor: Colors.white,
            icon: Icon(Icons.more_horiz),
            title: Text('Settings', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
      body: bottomBarItems[_selectedIndex],
    );
  }
}
