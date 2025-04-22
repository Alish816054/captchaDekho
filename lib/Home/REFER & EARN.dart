import 'package:captchadekho/appbar/appbar.dart';
import 'package:flutter/material.dart';

class REFERANDEARN extends StatelessWidget {
  const REFERANDEARN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back,
        title: ("REFER & EARN"),
        backgroundColor: Color(0xFF8664E7),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Color(0XFF3F857C), Color(0XFF384296)],
                ),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 30),
                        child: Text(
                          "Refer now & earn",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            fontFamily: "Volkhov",
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Row(
                          children: [
                            Text(
                              "up to",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                                fontFamily: "Volkhov",
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              " ₹500",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                                fontFamily: "Volkhov",
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Row(children: []),
          // Row(children: []),
          // Row(children: []),
          // Row(children: []),
          // Row(children: []),
          // Row(children: []),
          // Row(children: []),
        ],
      ),
    );
  }
}
