import 'package:flutter/material.dart';

class PlaylistsScreen extends StatelessWidget {
  PlaylistsScreen({Key? key}) : super(key: key);
  List images = [
    "https://yt3.ggpht.com/a/AATXAJyC6fEuO4juud_DfMLs2qQ_1yU6OPDQNFL9GA=s900-c-k-c0xffffffff-no-rj-mo",
    "https://tse2.mm.bing.net/th?id=OIP.UA3F5XGfdYlgRog-TAijngHaHa&pid=Api&P=0",
    "https://1.bp.blogspot.com/-KvU4TMtl78g/XX3odMIHDhI/AAAAAAAAO-k/UQ1h87Tif2szXrSUTao5pO6QsT1u7VwEQCEwYBhgL/w1200-h630-p-k-no-nu/30.png",
    "https://tse3.mm.bing.net/th?id=OIP.MdMTatJQxYEzyT2q8DpLeAHaHa&pid=Api&P=0",
    "https://i.ytimg.com/vi/4qPrnwI_7DY/maxresdefault.jpg",
    "https://tse2.mm.bing.net/th?id=OIP.odzVNLi24KSzcGfqbp_1ZwHaFj&pid=Api&P=0",
    "http://wallpapersdsc.net/wp-content/uploads/2016/01/Selena-Gomez-Wallpapers.jpeg",
    "https://s-media-cache-ak0.pinimg.com/736x/0d/78/14/0d7814f474272eb28f7830a2020c4ee1.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.black,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 50),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              border: Border.all(width: 1, color: Colors.grey.shade600),
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search...",
                  style: TextStyle(fontSize: 20, color: Colors.pink.shade100),
                ),
                Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.pink.shade100,
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: images.length,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(images[index]))),
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2 / 2,
                  crossAxisSpacing: 35,
                  mainAxisSpacing: 35,
                  crossAxisCount: 2),
            ),
          ),
        ],
      ),
    );
  }
}
