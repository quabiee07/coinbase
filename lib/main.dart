import 'package:calorie_tracker/widget/button.dart';
import 'package:calorie_tracker/colors.dart';
import 'package:calorie_tracker/widget/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    height: MediaQuery.of(context).size.height * .42,
                    color: ColorManager.primaryColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            roundButton(
                              const Icon(
                                Icons.qr_code_scanner_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '@quabiee',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: ColorManager.atTextColor,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'US\$1015.2',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: ColorManager.whiteTextColor,
                              fontSize: 30),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: buildTextButton(context),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    color: ColorManager.whiteTextColor,
                    height: MediaQuery.of(context).size.height * .55,
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .35,
                    right: 10.0,
                    left: 10.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1,
                  width: MediaQuery.of(context).size.width,
                  child: const Card(
                    color: ColorManager.whiteTextColor,
                    elevation: 4.0,
                    child: TabCard(),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          text: const ['', '', ''],
          iconList: [
            Image.asset('assets/images/Wallet.png', scale: 3),
            Image.asset('assets/images/Microsoft.png', scale: 3),
            Image.asset('assets/images/Settings.png', scale: 3),
          ],
          onChange: (val) {
            setState(() {});
          },
          defaultSelectedIndex: 0,
        ));
  }

  Widget roundButton(Icon icon) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: ColorManager.secondaryColor),
        child: icon,
      ),
      onTap: () {},
    );
  }
}

class TabCard extends StatelessWidget {
  const TabCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: TabBar(
            splashBorderRadius: BorderRadius.circular(15),
            indicatorColor: ColorManager.primaryColor,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 25),
            indicatorWeight: 2,
            tabs: const [
              Tab(
                child: Text(
                  'Coins',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: ColorManager.primaryColor),
                ),
              ),
              Tab(
                child: Text(
                  'NFTs',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
              )
            ],
          ),
        ),
        body: const TabBarView(children: [CoinTab(), NftTab()]),
      ),
    );
  }
}

class CoinTab extends StatelessWidget {
  const CoinTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'ACTIONS',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        ListTile(
          leading: Image.asset('assets/images/dash-32x32-441957.png'),
          title: const Text(
            'Get more crypto',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          subtitle: const Text(
            'From Coinbase or elsewhere',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        ListTile(
          leading: Image.asset('assets/images/devcoin-32x32-441952.png'),
          title: const Text(
            'Earn interest on your crypto',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          subtitle: const Text(
            'Up to 15.7% APR',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'BALANCE',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        ListTile(
          leading: Image.asset('assets/images/tether-32x32-441954.png'),
          title: const Text('Tether USD',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              )),
          subtitle: const Text('USDT', style: TextStyle(color: Colors.grey),),
          trailing: SizedBox(
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const  [
                Text(
                  'US\$1005.00',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '1005.00',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        ListTile(
          leading: Image.asset('assets/images/bitcoin-32x32-441959.png'),
          title: const Text('Bitcoin',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              )),
          subtitle: const Text('BTC', style: TextStyle(color: Colors.grey),),
          trailing: SizedBox(
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const  [
                Text(
                  'US\$9.12',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '0.00023675',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        ListTile(
          leading: Image.asset('assets/images/ripple-32x32-441950.png'),
          title: const Text('Ripple',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              )),
          subtitle: const Text('XPR', style: TextStyle(color: Colors.grey),),
          trailing: SizedBox(
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const  [
                Text(
                  'US\$1.08',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '1.75209258',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class NftTab extends StatelessWidget {
  const NftTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('NFT Tab'),
      ),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//    late int selectedIndex =0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         scrollDirection: Axis.vertical,
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Padding(
//                     padding:
//                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//                     child: Text(
//                       'Portfolio balance',
//                       style: TextStyle(
//                           fontWeight: FontWeight.w500, color: Colors.grey),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 20),
//                     child: Text(
//                       '\$1000.00',
//                       style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black,
//                           fontSize: 28),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 width: 100,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                 child: roundButton(const Icon(
//                   Icons.add_alert_rounded,
//                   color: Colors.black,
//                 )),
//               ),
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//                 child: Text(
//                   'Watchlist',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                       fontSize: 20),
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//                 child: Container(
//                   height: 430,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     border: Border.all(color: Colors.grey[300]!),
//                     color: Colors.white12,
//                   ),
//                   child: ListView(
//                     physics: NeverScrollableScrollPhysics(),
//                     children: [
//                       ListTile(
//                         leading: Image.asset('assets/images/bitcoin-32x32-441959.png'),
//                         title: const Text(
//                           "Bitcoin",
//                           style: TextStyle(
//                               fontSize: 16, fontWeight: FontWeight.w500),
//                         ),
//                         subtitle: const Text("BTC",
//                             style: TextStyle(fontSize: 13, color: Colors.grey)),
//                         trailing: SizedBox(
//                           width: 100,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             mainAxisSize: MainAxisSize.min,
//                             children: const [
//                               Text(
//                                 "\$43,000.00",
//                                 style: TextStyle(
//                                     fontSize: 16, fontWeight: FontWeight.w400),
//                               ),
//                               Text("+0.78%",
//                                   style: TextStyle(
//                                       fontSize: 13, color: Colors.green)),
//                             ],
//                           ),
//                         ),
//                       ),
//                       ListTile(
//                         leading: Image.asset("assets/images/etherium-32x32-441953.png"),
//                         title: const Text(
//                           "Ethereum",
//                           style: TextStyle(
//                               fontSize: 16, fontWeight: FontWeight.w500),
//                         ),
//                         subtitle: const Text("ETH",
//                             style: TextStyle(fontSize: 13, color: Colors.grey)),
//                         trailing: SizedBox(
//                           width: 100,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             mainAxisSize: MainAxisSize.min,
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: const [
//                               Text(
//                                 "\$1,529.84",
//                                 style: TextStyle(
//                                     fontSize: 16, fontWeight: FontWeight.w400),
//                               ),
//                               Text("+5.68%",
//                                   style: TextStyle(
//                                       fontSize: 13, color: Colors.green)),
//                             ],
//                           ),
//                         ),
//                       ),
//                       ListTile(
//                         leading: Image.asset("assets/images/monero-32x32-441944.png"),
//                         title: const Text(
//                           "Monero",
//                           style:  TextStyle(
//                               fontSize: 16, fontWeight: FontWeight.w500),
//                         ),
//                         subtitle: const Text("MNR",
//                             style: TextStyle(fontSize: 13, color: Colors.grey)),
//                         trailing: SizedBox(
//                           width: 100,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             mainAxisSize: MainAxisSize.min,
//                             children: const [
//                               Text(
//                                 "\$1.04",
//                                 style: TextStyle(
//                                     fontSize: 16, fontWeight: FontWeight.w400),
//                               ),
//                               Text("+7.62%",
//                                   style: TextStyle(
//                                       fontSize: 13, color: Colors.green)),
//                             ],
//                           ),
//                         ),
//                       ),
//                       ListTile(
//                         leading: Image.asset("assets/images/litecoin-32x32-441956.png"),
//                         title: const Text(
//                           "Litecoin",
//                           style:  TextStyle(
//                               fontSize: 16, fontWeight: FontWeight.w500),
//                         ),
//                         subtitle: const Text("LTC",
//                             style: TextStyle(fontSize: 13, color: Colors.grey)),
//                         trailing: SizedBox(
//                           width: 100,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             mainAxisSize: MainAxisSize.min,
//                             children: const [
//                               Text(
//                                 "\$0.90",
//                                 style: TextStyle(
//                                     fontSize: 16, fontWeight: FontWeight.w400),
//                               ),
//                               Text("+3.45%",
//                                   style: TextStyle(
//                                       fontSize: 13, color: Colors.green)),
//                             ],
//                           ),
//                         ),
//                       ),
//                       ListTile(
//                         leading: Image.asset("assets/images/dogecoin-32x32-441958.png"),
//                         title: const Text(
//                           "Dogecoin",
//                           style:  TextStyle(
//                               fontSize: 16, fontWeight: FontWeight.w500),
//                         ),
//                         subtitle: const Text("DOGE",
//                             style: TextStyle(fontSize: 13, color: Colors.grey)),
//                         trailing: SizedBox(
//                           width: 100,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             mainAxisSize: MainAxisSize.min,
//                             children: const [
//                               Text(
//                                 "\$6.26",
//                                 style: TextStyle(
//                                     fontSize: 16, fontWeight: FontWeight.w400),
//                               ),
//                               Text("-4.50%",
//                                   style: TextStyle(
//                                       fontSize: 13, color: Colors.red)),
//                             ],
//                           ),
//                         ),
//                       ),
//                       ListTile(
//                         leading: Image.asset("assets/images/tether-32x32-441954.png"),
//                         title: const Text(
//                           "Tether",
//                           style:  TextStyle(
//                               fontSize: 16, fontWeight: FontWeight.w500),
//                         ),
//                         subtitle: const Text("USDT",
//                             style: TextStyle(fontSize: 13, color: Colors.grey)),
//                         trailing: SizedBox(
//                           width: 100,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             mainAxisSize: MainAxisSize.min,
//                             children: const [
//                               Text(
//                                 "\$1.00",
//                                 style: TextStyle(
//                                     fontSize: 16, fontWeight: FontWeight.w400),
//                               ),
//                               Text("-0.21%",
//                                   style: TextStyle(
//                                       fontSize: 13, color: Colors.red)),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 20,
//                 ),
//                 child: Text(
//                   'Top Movers',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                       fontSize: 20),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                 height: 200,
//                 child: ListView.separated(
//                   scrollDirection: Axis.horizontal,
//                   shrinkWrap: true,
//                   itemCount: 5,
//                   itemBuilder: (context, index){
//                     return crypto(Image.asset("assets/images/ripple-32x32-441950.png"), 'Ripple');
//                   },
//                   separatorBuilder: (BuildContext context, int index) => const SizedBox(width:30 ,),
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//       bottomNavigationBar: CustomBottomNavigationBar(
//           iconList: [
//             const Icon(Icons.home,color: Color(0xFF2150F5),),
//             const Icon(Icons.pie_chart,color: Colors.black26,),
//             Center(
//               child: FloatingActionButton(
//                 onPressed: (){},
//                 mini: true,
//                 backgroundColor: Color(0xFF2150F5),
//                 child: const Icon(Icons.swap_horiz_rounded),),
//             ),
//             const Icon(Icons.bar_chart_sharp, color: Colors.black26,),
//             const Icon(Icons.person, color: Colors.black26,),
//
//
//           ],
//           text: const ['Home', 'Portfolio',' ','Prices', 'Settings'],
//           onChange:  (val) {
//             setState(() {
//               selectedIndex = val;
//             });
//           },
//         defaultSelectedIndex: 0,
//
//       ),
//     );
//   }}
//
//   Widget roundButton(Icon icon) {
//     return GestureDetector(
//       child: Container(
//         height: 50,
//         width: 50,
//         decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey[400]!),
//             borderRadius: BorderRadius.circular(30),
//             color: Colors.white24),
//         child: Center(child: icon),
//       ),
//       onTap: () {},
//     );
//   }
//
//   Widget crypto(Image image, String data) {
//     return Container(
//       height: 50,
//       width: 120,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         border: Border.all(color: Colors.grey[300]!),
//         color: Colors.white12,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: image,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Text(
//               data,
//               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//
//
