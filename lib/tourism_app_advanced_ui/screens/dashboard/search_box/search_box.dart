import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 10),
      margin: const EdgeInsets.only(left: 10, right: 10, bottom:20, top: 30),
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.shade300,
      child: Row(
        children: const [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search here",
                hintStyle: TextStyle(fontSize: 20),
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
          Icon(
            Icons.search,
            size: 30,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
