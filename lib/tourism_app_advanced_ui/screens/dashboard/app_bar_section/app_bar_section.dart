import 'package:flutter/material.dart';
AppBar appBarSection() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    centerTitle: true,
    title: RichText(
      text: const TextSpan(
        text: 'Go',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
        children: <TextSpan>[
          TextSpan(
            text: 'Fast',
            style:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    ),
    leading: Image.asset("assets/images/tourism_two_images/sort.png",scale:15),
    actions:const [
      CircleAvatar(
        radius:25,
        backgroundImage:NetworkImage("https://static.fanpage.it/wp-content/uploads/sites/27/2020/08/leo-messi-barcellona.jpg"),
      ),
      SizedBox(width: 10),
    ],
  );
}
