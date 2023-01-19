import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicLists extends StatelessWidget {
  MusicLists({Key? key}) : super(key: key);
  List musicItems = [
    {
      "images":
          "http://wallup.net/wp-content/uploads/2017/11/17/355356-pop_music.jpg",
      "heading": "Hero",
      "subtitle": "Taylor Swift"
    },
    {
      "images":
          "https://imgix.bustle.com/mic/lzrhyxqx2jj0gfyfgzxm5axkk7ubiyfrlvvtr8uasdona6hws5rmovu3ztlykolt.jpg?w=1020&h=576&fit=crop&crop=faces&auto=format%2Ccompress",
      "heading": "Unholy",
      "subtitle": "Sam Smith,Kim Petras "
    },
    {
      "images":
          "https://i2.wp.com/nypost.com/wp-content/uploads/sites/2/2021/02/eighties-pop-32.jpg?quality=90&strip=all&ssl=1",
      "heading": "Lift Me UP",
      "subtitle": "Rihanna"
    },
    {
      "images":
          "https://www.liveabout.com/thmb/rrFtYx9a2CvaiS851h_vDM08AY0=/1536x1024/filters:no_upscale():max_bytes(150000):strip_icc()/please-use-42-59571239-665089256-5ae10e3243a10300365b3c52.jpg",
      "heading": "Depression",
      "subtitle": "Dax"
    },
    {
      "images":
          "https://timesofindia.indiatimes.com/photo/75381406/size-503467/75381406.jpg",
      "heading": "I'm Good",
      "subtitle": "David Guetta "
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount:musicItems.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Container(
            height: 90,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                            image: NetworkImage(musicItems[index]["images"])),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          musicItems[index]["heading"],
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(musicItems[index]["subtitle"],
                            style: Theme.of(context).textTheme.headline6)
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.star,
                      color: Colors.pink.shade100,
                    ),
                    const SizedBox(width: 20),
                    Icon(
                      Icons.download,
                      size: 30,
                      color: Colors.pink.shade100,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
