import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DottedBorderRefactored extends StatelessWidget {
  const DottedBorderRefactored({
    required this.text,
    this.color = Colors.grey,
    Key? key,
  }) : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.grey,
      borderType: BorderType.RRect,
      radius: const Radius.circular(10),
      strokeWidth: 1,
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, color: color),
      ),
    );
  }
}
