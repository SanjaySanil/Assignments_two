import 'package:demo/music_player_ui/home_screen/home_screen/music_lists/music_lists.dart';
import 'package:flutter/material.dart';

class HomeScreenMusify extends StatelessWidget {
  HomeScreenMusify({Key? key}) : super(key: key);
  List musicBg = [
    "https://wallpapercave.com/wp/wp4500397.jpg",
    "https://i.ytimg.com/vi/HaAKBtBI_fs/maxresdefault.jpg",
    "https://i.ytimg.com/vi/kDivlFKEaQ0/maxresdefault.jpg",
    "http://store.arcmusic.co.uk/user/products/large/EUCD2813-sufi-music-from-turkey.jpg",
    "https://pbs.twimg.com/media/C-YzzXtUwAAPHNV.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Suggested playLists",
            style: Theme.of(context).textTheme.headline4,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * .6,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            musicBg[index],
                          ),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                itemCount: musicBg.length),
          ),
          Text(
            "Recommended for you ",
            style: Theme.of(context).textTheme.headline4,
          ),
          MusicLists(),
        ],
      ),
    );
  }
}
