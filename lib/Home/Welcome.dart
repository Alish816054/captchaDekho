import 'package:captchadekho/Home/OFFER.dart';
import 'package:captchadekho/Home/QUIZ.dart';
import 'package:captchadekho/Home/REFER%20&%20EARN.dart';
import 'package:captchadekho/Home/WALLET.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> cardData = [
      {"image": "assets/w1.png", "title": "Quiz", "color": Color(0xFFFFBCB2)},
      {"image": "assets/w2.png", "title": "Offer", "color": Color(0xFFA4DECA)},
      {"image": "assets/w3.png", "title": "Wallet", "color": Color(0xFFFFDCAF)},
      {
        "image": "assets/w4.png",
        "title": "Refer & Earn",
        "color": Color(0xFFCAC5FF),
      },
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Row(
          children: [
            SizedBox(width: 14),
            CircleAvatar(
              radius: 30,
              child: Text(
                "A",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            SizedBox(width: 20),
            Text("Welcome !", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(Icons.menu),
              iconSize: 40, // 👈 icon at the end
              onPressed: () {
                // action code
              },
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: ListView.separated(
          itemCount: cardData.length,
          separatorBuilder: (context, index) => SizedBox(height: 30),
          itemBuilder: (context, index) {
            return buildCustomCard(
              cardData[index]['image'],
              cardData[index]['title'],
              cardData[index]['color'],
              () {
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QUIZ()),
                  );
                }
                if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OFFER()),
                  );
                }
                if (index == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WALLET()),
                  );
                }
                if (index == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => REFERANDEARN()),
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}

Widget buildCustomCard(
  String imagePath,
  String title,
  Color cardColor,
  VoidCallback onTap,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 19, right: 19),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 180,
        width: 450,
        child: Card(
          color: cardColor,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 38.0),
            child: Row(
              children: [
                Image.asset(imagePath),
                SizedBox(width: 100),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
