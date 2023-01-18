import 'package:flutter/material.dart';

class ReusableElevatedButton extends StatelessWidget {
  const ReusableElevatedButton(
      {required this.name,
      required this.color,
      required this.iconData,
      required this.onTap,
      Key? key})
      : super(key: key);
  final String name;
  final IconData iconData;
  final Color color;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.070,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape:const StadiumBorder(),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style:const TextStyle(fontSize: 16),
            ),
            Icon(
              iconData,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
