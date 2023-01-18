import 'package:demo/tourism_app_advanced_ui/screens/dashboard/refactored_cards/refactored_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class HeaderSections extends StatelessWidget {
  const HeaderSections({
    required this.index,
    Key? key,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "Most ${RefactoredCards.items[index]["location"]} & \nPeaceful Natural Place",
                style: const TextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 20,
                    itemPadding:
                        const EdgeInsets.symmetric(horizontal: 0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "4.75 rating",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          const VerticalDivider(
            thickness: 1,
            color: Colors.grey,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.25,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://www.worldatlas.com/r/w960-q80/upload/2e/19/e1/shutterstock-231368443-1.jpg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
