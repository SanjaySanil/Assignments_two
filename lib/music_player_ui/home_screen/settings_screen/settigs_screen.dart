import 'package:flutter/material.dart';

class SettingsScreenMusify extends StatelessWidget {
  const SettingsScreenMusify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width:MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      color: Colors.yellow,
    );
  }
}
