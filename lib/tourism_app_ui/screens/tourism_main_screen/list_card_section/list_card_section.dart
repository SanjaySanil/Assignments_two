import 'package:flutter/material.dart';

import '../description_screen/description_screen.dart';

class ListCards extends StatelessWidget {
  ListCards({
    Key? key,
  }) : super(key: key);
  static String listCard="listCard";
  static List items = [
    {
      "images": "https://cdn-live.foreignaffairs.com/sites/default/files/styles/social_share/public/public-assets/taxonomy-images/region-italy.jpg?itok=vy9liCiR",
      "cityNames": "Italy"
    },
    {
      "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9T7luP7UPe_AhC_LE3ijIqM1bk6KKSvqg9A&usqp=CAU",
      "cityNames": "Paris",
    },
    {
      "images": "https://d3dqioy2sca31t.cloudfront.net/Projects/cms/production/000/024/811/slideshow/c56bd725101bef2aaef43b0def6a24c7/england-london-big-ben-river-night.jpg",
      "cityNames": "England",
    },
    {
      "images": "https://i.natgeofe.com/n/20d65599-d2e3-49e7-9641-a10b25aa8df2/toronto-travel.jpg?w=2048&h=1356",
      "cityNames": "Canada",
    },
    {
      "images": "https://cdn2.wanderlust.co.uk/media/1073/shutterstock_4372183.jpg?anchor=center&mode=crop&width=1920&height=858&format=auto&rnd=131455359250000000",
      "cityNames": "India",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          Cards(
            cityName: items[index]["cityNames"],
            ontTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  DescriptionScreen(placeName: items[index]["cityNames"], url:items[index]["images"]),));
            },
            url: items[index]["images"],
          ),
    );
  }
}

class Cards extends StatelessWidget {
  Cards({
    required this.ontTap,
    required this.cityName,
    required this.url,
    Key? key,
  }) : super(key: key);
  final String url;
  final String cityName;
  final Function() ontTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height * 0.15,
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(url)),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            cityName,
            style: const TextStyle(fontSize: 35, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
