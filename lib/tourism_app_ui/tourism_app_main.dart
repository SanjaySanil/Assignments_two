import 'package:demo/tourism_app_ui/screens/tourism_main_screen/list_card_section/list_card_section.dart';
import 'package:demo/tourism_app_ui/screens/tourism_main_screen/tourism_main_screen.dart';
import 'package:flutter/material.dart';


class TourismAppMain extends StatelessWidget {
  const TourismAppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:TourismScreen.tourismScreen,
      routes:{
        TourismScreen.tourismScreen:(context)=>TourismScreen(),
        ListCards.listCard:(context)=>ListCards(),
      },
    );
  }
}
