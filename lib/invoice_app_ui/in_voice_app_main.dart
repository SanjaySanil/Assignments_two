import 'package:demo/invoice_app_ui/screens/first_screen/first_screen.dart';
import 'package:demo/invoice_app_ui/screens/wallet_screen/bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';

class InvoiceAppMain extends StatelessWidget {
  const InvoiceAppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:InvoiceFirstScreen.id,
      routes: {
        InvoiceFirstScreen.id: (context) => InvoiceFirstScreen(),
        BottomNavBars.bottomNavBar: (context) => const BottomNavBars(),
      },
    );
  }
}
