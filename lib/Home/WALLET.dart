import 'package:captchadekho/appbar/appbar.dart';
import 'package:flutter/material.dart';

class WALLET extends StatefulWidget {
  const WALLET({super.key});

  @override
  State<WALLET> createState() => _WALLETState();
}

class _WALLETState extends State<WALLET> with TickerProviderStateMixin {
  late TabController tabController;
  List<Map<String, dynamic>> Transactiondata = [
    {
      "Transaction": "Signup bonus",
      "date_time": "05 December 11:04 AM",
      "coin": "+150",
    },
    {
      "Transaction": "Captcha Reward",
      "date_time": "05 December 11:04 AM",
      "coin": "+100",
    },
    {
      "Transaction": "Signup bonus ",
      "date_time": "07 December 11:04 AM",
      "coin": "+99",
    },
    {
      "Transaction": "Signup bonus ",
      "date_time": "07 December 11:04 AM",
      "coin": "+10",
    },
    {
      "Transaction": "Signup bonus ",
      "date_time": "07 December 11:04 AM",
      "coin": "+109",
    },
    {
      "Transaction": "Signup bonus ",
      "date_time": "07 December 11:04 AM",
      "coin": "+150",
    },
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.more_vert,
        title: ("WALLET"),
        backgroundColor: const Color(0xFF8664E7),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 270,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0XFF6ABEB9), width: 3),
                gradient: const LinearGradient(
                  colors: [Color(0XFFB1E3E1), Color(0xFFA4B4E6)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset("assets/wallet.png", height: 50),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              "Total Balance",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "₹5,111",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Divider(color: Color(0XFF6ABEB9), thickness: 3),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: SizedBox(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: const Color(0XFF9E55DC),
                        ),
                        child: const Text(
                          "Redeem Now",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 30),

          // TabBar
          TabBar(
            controller: tabController,
            indicatorColor: Color(0XFF3F857C),
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: const [Tab(text: "Transactions"), Tab(text: "Redeems")],
          ),

          // TabBarView
          // Expanded(
          //   child:
          //   TabBarView(
          //     controller: tabController,
          //     children:[
          //       Center(child: Text("Transaction Details")),
          //       Center(child: Text("Redeem History")),
          //     ],
          //   ),
          // ),

          // Expanded(
          //   child: ListView.builder(
          //     itemBuilder: (context, index) {
          //       return TabBarView(
          //         controller: tabController,
          //         children: [
          //           ListTile(
          //             title: Text(Transactiondata[index]["Transaction"]),
          //             subtitle: Text(Transactiondata[index]["date_time"]),
          //             trailing: Image.asset("assets/dollar.png"),
          //           ),
          //         ],
          //       );
          //     },
          //     itemCount: Transactiondata.length,
          //   ),
          // ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                // 🟢 Transactions Tab
                ListView.builder(
                  itemCount: Transactiondata.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        Transactiondata[index]["Transaction"],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(Transactiondata[index]["date_time"]),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            Transactiondata[index]["coin"],
                            style: const TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ), // 🟣 spacing between coin and image
                          Image.asset(
                            "assets/dollar.png",
                            height: 25,
                            width: 25,
                          ),
                        ],
                      ),
                    );
                  },
                ),

                // 🔵 Redeems Tab
                const Center(child: Text("Redeem History")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
