import 'package:demo/music_player_ui/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class MusicPlayerUIMain extends StatelessWidget {
  const MusicPlayerUIMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.homeScree,
      themeMode: ThemeMode.dark,
      darkTheme:ThemeData(brightness:Brightness.dark),
      routes: {
        HomeScreen.homeScree: (context) => const HomeScreen(),
      },
    );
  }
}
