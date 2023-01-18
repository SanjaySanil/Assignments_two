import 'package:demo/tourism_app_advanced_ui/screens/dashboard/refactored_cards/refactored_cards.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'header_section/header_section.dart';

class DescriptionScreens extends StatelessWidget {
  const DescriptionScreens({Key? key}) : super(key: key);
  static String descriptionScreen = "descriptionScreen";

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeaderSections(
                index: routeArgs,
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: const Text(
                  "About Place",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper, lectus vitae pulvinar auctor, velit neque tincidunt sapien, vitae commodo ante purus nec lectus. Quisque tincidunt maximus turpis non gravida. Suspendisse egestas erat posuere ante molestie facilisis.",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Special Facilities",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            FontAwesomeIcons.squareParking,
                            color: Colors.blue,
                            size: 16,
                          ),
                          Text("Free Parking"),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.hourglass_top_sharp,
                            color: Colors.blue,
                            size: 16,
                          ),
                          Text("24 h Support"),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            FontAwesomeIcons.wifi,
                            color: Colors.blue,
                            size: 15,
                          ),
                          SizedBox(width: 10),
                          Text("Free Wifi"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            RefactoredCards.items[routeArgs]["image"]),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Our Packages",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildContainer("Adult", "02"),
                      buildContainer("Child", "00"),
                      buildContainer("Night", "02"),
                      buildContainer("Room", "01"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "\$860.00",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Booking   →",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer(String name, String number) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      height: 50,
      width: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(number)
        ],
      ),
    );
  }
}
