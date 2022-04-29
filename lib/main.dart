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
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   late int selectedIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
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
                children: const [
                  Padding(
                    padding:
                         EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: roundButton(const Icon(
                  Icons.add_alert_rounded,
                  color: Colors.black,
                )),
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
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        leading: Image.asset('assets/images/bitcoin-32x32-441959.png'),
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
                        leading: Image.asset("assets/images/etherium-32x32-441953.png"),
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
                        leading: Image.asset("assets/images/monero-32x32-441944.png"),
                        title: const Text(
                          "Monero",
                          style:  TextStyle(
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
                        leading: Image.asset("assets/images/litecoin-32x32-441956.png"),
                        title: const Text(
                          "Litecoin",
                          style:  TextStyle(
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
                        leading: Image.asset("assets/images/dogecoin-32x32-441958.png"),
                        title: const Text(
                          "Dogecoin",
                          style:  TextStyle(
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
                        leading: Image.asset("assets/images/tether-32x32-441954.png"),
                        title: const Text(
                          "Tether",
                          style:  TextStyle(
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
                  'Top Movers',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 20),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: 200,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index){
                    return crypto(Image.asset("assets/images/ripple-32x32-441950.png"), 'Ripple');
                  },
                  separatorBuilder: (BuildContext context, int index) => const SizedBox(width:30 ,),
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
          iconList: [
            const Icon(Icons.home,color: Color(0xFF2150F5),),
            const Icon(Icons.pie_chart,color: Colors.black26,),
            Center(
              child: FloatingActionButton(
                onPressed: (){},
                mini: true,
                backgroundColor: Color(0xFF2150F5),
                child: const Icon(Icons.swap_horiz_rounded),),
            ),
            const Icon(Icons.bar_chart_sharp, color: Colors.black26,),
            const Icon(Icons.person, color: Colors.black26,),


          ],
          text: const ['Home', 'Portfolio',' ','Prices', 'Settings'],
          onChange:  (val) {
            setState(() {
              selectedIndex = val;
            });
          },
        defaultSelectedIndex: 0,

      ),
    );
  }}

  Widget roundButton(Icon icon) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[400]!),
            borderRadius: BorderRadius.circular(30),
            color: Colors.white24),
        child: Center(child: icon),
      ),
      onTap: () {},
    );
  }

  Widget crypto(Image image, String data) {
    return Container(
      height: 50,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey[300]!),
        color: Colors.white12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: image,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              data,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }


class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<Widget> iconList;
  final List<String> text;

  const CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
        required this.iconList,
        required this.text,
        required this.onChange});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<dynamic> _iconList = [];
  List<String> _text = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
    _text = widget.text;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length && i < _text.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], _text[i], i));
    }

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0,color: Colors.grey[300]!)
        ),
      ),
      child: Row(
        children: _navBarItemList,
      ),
    );
  }

  Widget buildNavBarItem(Widget icon, String text, int index) {
    return GestureDetector(
        onTap: () {
          widget.onChange(index);
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          height: 70,
          width: MediaQuery.of(context).size.width / _iconList.length,
          decoration: index == _selectedIndex
              ?  const BoxDecoration(
            // gradient: LinearGradient(colors: [
            //   Colors.green.withOpacity(0.3),
            //   Colors.green.withOpacity(0.015),
            // ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
          )
              : const BoxDecoration(),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  icon,

                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: index == _selectedIndex
                            ? const Color(0xFF2150F5)
                            : Colors.grey[500]),
                  )
                ]),
          ),
        ));
  }
}



