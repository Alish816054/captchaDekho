import 'package:captchadekho/appbar/appbar.dart';
import 'package:flutter/material.dart';

class WALLET extends StatefulWidget {
  const WALLET({super.key});

  @override
  State<WALLET> createState() => _WALLETState();
}

class _WALLETState extends State<WALLET> with TickerProviderStateMixin {
  late TabController tabController;

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
            indicatorColor: Colors.deepPurple,
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: const [Tab(text: "Transactions"), Tab(text: "Redeems")],
          ),

          // TabBarView
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                Center(child: Text("Transaction Details")),
                Center(child: Text("Redeem History")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
