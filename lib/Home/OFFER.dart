import 'package:captchadekho/appbar/appbar.dart';
import 'package:flutter/material.dart';

class OFFER extends StatelessWidget {
  const OFFER({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> Listdata = [
      {
        "lidingimage": "assets/L1.png",
        "title": "Ninja",
        "subtitle": "Install and open",
        "trealingbtntext": "install",
      },
      {
        "lidingimage": "assets/L2.png",
        "title": "Cricket",
        "subtitle": "Install and open",
        "trealingbtntext": "install",
      },
      {
        "lidingimage": "assets/L3.png",
        "title": "Chess",
        "subtitle": "Install and open",
        "trealingbtntext": "install",
      },
      {
        "lidingimage": "assets/L4.png",
        "title": "football",
        "subtitle": "Install and open",
        "trealingbtntext": "install",
      },
      {
        "lidingimage": "assets/L5.png",
        "title": "Clash of clans",
        "subtitle": "Install and open",
        "trealingbtntext": "install",
      },
      {
        "lidingimage": "assets/L6.png",
        "title": "8 Ball pool",
        "subtitle": "Install and open",
        "trealingbtntext": "install",
      },
    ];
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back,
        title: ("OFFER"),
        backgroundColor: Color(0xFF8664E7),
      ),
      body: Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                top: index == 0 ? 30.0 : 8.0,
                bottom: 8.0,
                left: 18.0,
                right: 18.0,
              ),
              child: Container(
                height: 120,
                width: 400,
                decoration: BoxDecoration(
                  color: index.isEven ? Color(0XFFE0F2F1) : Color(0XFFC5CAE9),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: Center(
                  child: ListTile(
                    leading: Image.asset(Listdata[index]["lidingimage"]),
                    title: Text(Listdata[index]["title"]),
                    subtitle: Text(Listdata[index]["subtitle"]),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: Text(Listdata[index]["trealingbtntext"]),
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: Listdata.length,
        ),
      ),
    );
  }
}
