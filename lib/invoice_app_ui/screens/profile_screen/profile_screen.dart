import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  List items = [
    {"icon": Icons.wallet_rounded, "titel": "My Wallet"},
    {"icon": Icons.chrome_reader_mode_outlined, "titel": "Terms & Policies"},
    {"icon": Icons.info, "titel": "About"},
    {"icon": Icons.logout, "titel": "Logout"},
  ];

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
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: MediaQuery.of(context).size.height * .5,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: (Radius.circular(50)),
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.blue.shade900,
                        ),
                      ),
                      const Text(
                        "Account",
                        style: TextStyle(fontSize: 17),
                      ),
                      const SizedBox(),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .2,
                    width: MediaQuery.of(context).size.width * .45,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://www.gannett-cdn.com/presto/2020/08/25/USAT/842737a0-5b6c-47bc-adbc-ea5bef879661-Messi_gone.jpg"),
                      ),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
                      ],
                      border: Border.all(width: 5, color: Colors.white),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                  const Text(
                    "Sanjay",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const Text(
                    "📧 sanjaysanil@gmail.com",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  const Text(
                    "📱 +91 9061662725",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Container(
                    height: 35,
                    width: 130,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff3a39a6),
                          Color(0xff4078df),
                        ],
                      ),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("Edit Profile"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: 4,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                margin: const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * .08,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white38,
                  border: Border.all(width: 2, color: Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          items[index]["icon"],
                          color: Colors.blue.shade900,
                        ),
                        const SizedBox(width: 15),
                        Text(
                          items[index]["titel"],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.blue.shade900,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
