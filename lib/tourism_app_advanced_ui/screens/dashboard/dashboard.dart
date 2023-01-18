import 'package:demo/tourism_app_advanced_ui/screens/dashboard/search_box/search_box.dart';
import 'package:flutter/material.dart';
import 'app_bar_section/app_bar_section.dart';
import 'refactored_cards/refactored_cards.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  static String dashboard = "dashboard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarSection(),
      body: SafeArea(
        child: Column(
          children: [
            const SearchBox(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Places",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding:const  EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RefactoredCards(),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .065,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Explore Now",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

