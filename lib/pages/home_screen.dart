import 'package:flutter/material.dart';
import '../res/colors.dart';
import '../widget/button.dart';
import '../widget/navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int selectedIndex = 0;

  List<String> images = [
    'assets/images/devcoin-32x32-441952.png',
    'assets/images/prime-32x32-441961.png',
    'assets/images/steem-32x32-441946.png',
    'assets/images/ripple-32x32-441950.png',
  ];
  List<String> symbols = [
    'DVC',
    'XPM',
    'STEEM',
    'XRP',
  ];

  List<String> prices = [
    '0.40',
    '0.07',
    '6.95',
    '0.61',
  ];

  List<String> percentage = [
    '+2.03',
    '+3.56',
    '+0.00',
    '+6.08',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      'Portfolio balance',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      '\$1000.00',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 28),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(right: 20, top: 20),
                child: roundButton(
                    const Icon(
                      Icons.add_alert_rounded,
                      color: Colors.black,
                    ),
                    Colors.transparent),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Text(
                  'Watchlist',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  height: 430,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey[300]!),
                    color: Colors.white12,
                  ),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        leading: Image.asset(
                            'assets/images/bitcoin-32x32-441959.png'),
                        title: const Text(
                          "Bitcoin",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        subtitle: const Text("BTC",
                            style: TextStyle(fontSize: 13, color: Colors.grey)),
                        trailing: SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                "\$43,000.00",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Text("+0.78%",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.green)),
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset(
                            "assets/images/etherium-32x32-441953.png"),
                        title: const Text(
                          "Ethereum",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        subtitle: const Text("ETH",
                            style: TextStyle(fontSize: 13, color: Colors.grey)),
                        trailing: SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "\$1,529.84",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Text("+5.68%",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.green)),
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset(
                            "assets/images/monero-32x32-441944.png"),
                        title: const Text(
                          "Monero",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        subtitle: const Text("MNR",
                            style: TextStyle(fontSize: 13, color: Colors.grey)),
                        trailing: SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                "\$1.04",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Text("+7.62%",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.green)),
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset(
                            "assets/images/litecoin-32x32-441956.png"),
                        title: const Text(
                          "Litecoin",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        subtitle: const Text("LTC",
                            style: TextStyle(fontSize: 13, color: Colors.grey)),
                        trailing: SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                "\$0.90",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Text("+3.45%",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.green)),
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset(
                            "assets/images/dogecoin-32x32-441958.png"),
                        title: const Text(
                          "Dogecoin",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        subtitle: const Text("DOGE",
                            style: TextStyle(fontSize: 13, color: Colors.grey)),
                        trailing: SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                "\$6.26",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Text("-4.50%",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.red)),
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset(
                            "assets/images/tether-32x32-441954.png"),
                        title: const Text(
                          "Tether",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        subtitle: const Text("USDT",
                            style: TextStyle(fontSize: 13, color: Colors.grey)),
                        trailing: SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                "\$1.00",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Text("-0.21%",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.red)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  'Top movers',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 20),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: 200,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: symbols.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey[300]!),
                        color: Colors.white12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            child: Image.asset(images[index]),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 8, bottom: 8, right: 5),
                                child: Text(
                                  symbols[index],
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade600),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  '\$${prices[index].toString()}',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade500),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 2),
                            child: Text(
                              percentage[index],
                              style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Text(
                  'Rewards',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 20.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 100,
                  width: 210,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.deepPurple.shade500),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: [
          const Icon(
            Icons.home,
            color: ColorManager.secondaryColor,
          ),
          const Icon(
            Icons.pie_chart,
            color: Colors.black26,
          ),
          Center(
            child: FloatingActionButton(
              onPressed: () {},
              mini: true,
              backgroundColor: ColorManager.secondaryColor,
              child: const Icon(Icons.swap_horiz_rounded),
            ),
          ),
          const Icon(
            Icons.bar_chart_sharp,
            color: Colors.black26,
          ),
          const Icon(
            Icons.person,
            color: Colors.black26,
          ),
        ],
        text: const ['Home', 'Portfolio', ' ', 'Prices', 'Settings'],
        onChange: (val) {
          setState(() {
            selectedIndex = val;
          });
        },
        defaultSelectedIndex: 0,
      ),
    );
  }
}

/////// iOS Home Screen

// class HomeScreeniOS extends StatefulWidget {
//   const HomeScreeniOS({Key? key}) : super(key: key);
//
//   @override
//   _HomeScreeniOSState createState() => _HomeScreeniOSState();
// }
//
// class _HomeScreeniOSState extends State<HomeScreeniOS> {
//   late int selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         physics: const NeverScrollableScrollPhysics(),
//         child: Stack(
//           children: [
//             Column(
//               children: [
//                 Container(
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 16, vertical: 20),
//                   height: MediaQuery.of(context).size.height * .42,
//                   color: ColorManager.primaryColor,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const SizedBox(
//                         height: 40,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           roundButton(
//                             const Icon(
//                               Icons.qr_code_scanner_rounded,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       const Text(
//                         '@quabiee',
//                         style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             color: ColorManager.atTextColor,
//                             fontSize: 18),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       const Text(
//                         'US\$1015.2',
//                         style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             color: ColorManager.whiteTextColor,
//                             fontSize: 30),
//                       ),
//                       const SizedBox(height: 10),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 20),
//                         child: buildTextButton(context),
//                       )
//                     ],
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.all(10.0),
//                   color: ColorManager.whiteTextColor,
//                   height: MediaQuery.of(context).size.height * .55,
//                 ),
//               ],
//             ),
//             Container(
//               alignment: Alignment.topCenter,
//               padding: EdgeInsets.only(
//                   top: MediaQuery.of(context).size.height * .35,
//                   right: 10.0,
//                   left: 10.0),
//               child: SizedBox(
//                 height: MediaQuery.of(context).size.height / 1,
//                 width: MediaQuery.of(context).size.width,
//                 child: const Card(
//                   color: ColorManager.whiteTextColor,
//                   elevation: 4.0,
//                   child: TabCard(),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//       bottomNavigationBar: CustomBottomNavigationBar(
//         text: const ['', '', ''],
//         iconList: [
//           Image.asset('assets/images/Wallet.png', scale: 3),
//           Image.asset('assets/images/Microsoft.png', scale: 3),
//           Image.asset('assets/images/Settings.png', scale: 3),
//         ],
//         onChange: (val) {
//           setState(() {});
//         },
//         defaultSelectedIndex: 0,
//       ),
//     );
//   }
//
//
// }
//
