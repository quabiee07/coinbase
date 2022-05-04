import 'package:flutter/material.dart';

import '../res/colors.dart';
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
        body:  TabBarView(children: [CoinTab(), NftTab()]),
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
