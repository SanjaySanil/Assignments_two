import 'dart:math';

import 'package:flutter/material.dart';

class IdBuilderContiner extends StatefulWidget {
  const IdBuilderContiner({Key? key}) : super(key: key);

  @override
  State<IdBuilderContiner> createState() => _IdBuilderContinerState();

}

class _IdBuilderContinerState extends State<IdBuilderContiner> {
  int randomNumber(int index){
    int randomNumber = Random().nextInt(50)*index;
    return randomNumber;
  }
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      padding:const EdgeInsets.only(top:10,bottom:10),
      itemCount: 10,
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(left:10,right: 10,bottom:5,top: 5),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 0.15,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            Text(randomNumber(index).toString(),
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900),
            ),
            Text(
              "Order ID-606060${randomNumber(index).toString()}",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Column(
              children: const [
                Text(
                  "Valid Till",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Text(
                  "Jan 12,2013",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
