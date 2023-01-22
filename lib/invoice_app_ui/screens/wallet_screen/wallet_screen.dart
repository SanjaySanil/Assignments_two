import 'package:demo/invoice_app_ui/screens/wallet_screen/header_section/header_section.dart';
import 'package:demo/invoice_app_ui/screens/wallet_screen/id_builder_container/id_builder_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'dotted_container/dotted_container.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xfff0ddd7),
            Color(0xffdde0f1),
            Color(0xffdbdef2),
            Color(0xfffadff0),
            Color(0xffe8f7fc),
          ],
        ),
      ),
      child: Column(
        children: [
          HeaderSection(),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              boxShadow: [
                BoxShadow(blurRadius: 5, color: Colors.grey.shade700),
              ],
            ),
            height: MediaQuery.of(context).size.height * 0.060,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.grey.shade600,
              labelColor: Colors.purple.shade900,
              labelStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              indicator: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(width: 3, color: Colors.purple.shade900),
                ),
              ),
              tabs: const [
                TabRefactored(
                  iconData: FontAwesomeIcons.gift,
                  text: "Rewards",
                ),
                TabRefactored(
                  iconData: FontAwesomeIcons.moneyBill,
                  text: "Rewards",
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        DottedBorderRefactored(text: "All"),
                        DottedBorderRefactored(text: "Direct Rewards"),
                        DottedBorderRefactored(
                          text: "Indirect Rewards",
                          color: Color(0xff00008b),
                        ),
                      ],
                    ),
                    const Expanded(
                      child: IdBuilderContiner(),
                    )
                  ],
                ),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabRefactored extends StatelessWidget {
  const TabRefactored({
    required this.text,
    required this.iconData,
    Key? key,
  }) : super(key: key);
  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 15,
          ),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}
