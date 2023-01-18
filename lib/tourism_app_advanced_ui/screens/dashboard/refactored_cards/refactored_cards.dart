import 'package:demo/tourism_app_advanced_ui/screens/description_screen/description_screen.dart';
import 'package:flutter/material.dart';

class RefactoredCards extends StatelessWidget {
  RefactoredCards({
    Key? key,
  }) : super(key: key);
  static List items = [
    {
      "image":
          "https://www.worldatlas.com/r/w960-q80/upload/2e/19/e1/shutterstock-231368443-1.jpg",
      "location": "Furious Places",
      "amount": "100"
    },
    {
      "image":
          "https://tse2.mm.bing.net/th?id=OIP.FeDwx8tr7DRveAjaDnH61wHaFL&pid=Api&P=0",
      "location": "Luxury Places",
      "amount": "200"
    },
    {
      "image":
          "https://tse3.mm.bing.net/th?id=OIP.bHETtlGcIkkzBSbP-ACETwHaFC&pid=Api&P=0",
      "location": "Nature Look",
      "amount": "252"
    },
    {
      "image":
          "https://tse1.mm.bing.net/th?id=OIP.-kcl3Yr_OxjRtxLDt4UrlgHaEu&pid=Api&P=0",
      "location": "Landscapes",
      "amount": "300"
    },
    {
      "image":
          "https://tse2.mm.bing.net/th?id=OIP.YEpnOBigXfti5tjP_2n3UgHaE8&pid=Api&P=0",
      "location": "Mountains",
      "amount": "444"
    },
    {
      "image":
          "https://tse4.mm.bing.net/th?id=OIP.lh-KoSpMGC8mk76mIq2TMAHaE4&pid=Api&P=0",
      "location": "Islands",
      "amount": "200"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .54,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 2.5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2),
        itemBuilder: (context, index) => Stack(
          children: [
            GestureDetector(
              onTap:(){
                Navigator.pushNamed(context, DescriptionScreens.descriptionScreen,arguments:index);
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(items[index]["image"]),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 18,
                      width: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        color: Colors.blue,
                      ),
                      child: Text("\$${ items[index]["amount"]}"
                       ,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                    Text(
                      items[index]["location"],
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
