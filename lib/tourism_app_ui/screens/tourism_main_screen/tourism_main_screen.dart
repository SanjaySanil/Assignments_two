import 'package:flutter/material.dart';
import 'list_card_section/list_card_section.dart';

class TourismScreen extends StatelessWidget {
  const TourismScreen({Key? key}) : super(key: key);
  static String tourismScreen = "tourismScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Places",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Popular",
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 20),
                ListCards()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
