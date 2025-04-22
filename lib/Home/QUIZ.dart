import 'package:flutter/material.dart';

import '../appbar/appbar.dart';

class QUIZ extends StatelessWidget {
  const QUIZ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back,
        title: "QUIZ",
        backgroundColor: Color(0xFF8664E7), // AppBar background
      ),
      body: Column(
        children: [
          SizedBox(height: 100),
          Center(
            child: Container(
              height: 350,
              width: 450,
              decoration: BoxDecoration(
                color: Color(0XFFCFD8DC),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "224 - 68 = _ _ _ ?",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFFA4B4E6),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "A",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 60),
                                Center(
                                  child: Text(
                                    "154",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 60),
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFA4B4E6),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "B",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 60),
                              Center(
                                child: Text(
                                  "164",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(width: 60),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFA4B4E6),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "C",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 60),
                              Center(
                                child: Text(
                                  "156",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(width: 60),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFA4B4E6),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "D",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 60),
                              Center(
                                child: Text(
                                  "162",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(width: 60),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
