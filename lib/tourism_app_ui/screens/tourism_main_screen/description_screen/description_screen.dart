import 'package:flutter/material.dart';

import '../list_card_section/list_card_section.dart';

class DescriptionScreen extends StatelessWidget {
  DescriptionScreen({required this.url, required this.placeName, Key? key})
      : super(key: key);
  final String url;
  final String placeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: MediaQuery.of(context).size.height * .35,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(url),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  placeName,
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.of(context).size.width * .7,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "India, country that occupies the greater part of South Asia. Its capital is New Delhi, built in the 20th century just south of the historic hub of Old Delhi to serve as India’s administrative centre. Its government is a constitutional republic that represents a highly diverse population consisting of thousands of ethnic groups and likely hundreds of languages. With roughly one-sixth of the world’s total population, India is the second most populous country, after China.",
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
                  ),
                ),
                const Text(
                  "Places to Visit",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ListCards.items.length,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(left: 10, top: 5, bottom: 20),
                width: MediaQuery.of(context).size.width * .4,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(ListCards.items[index]["images"]),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
