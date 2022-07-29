
 
import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/view/home/home_screen.dart';
import 'package:crypto_app/view/market/market_home.dart';
import 'package:crypto_app/view/search/search_screen.dart';
import 'package:crypto_app/view/trade/trade_home.dart';
import 'package:crypto_app/view/traders/trader_home.dart';
import 'package:crypto_app/view/wallet/wallet_screen.dart';
import 'package:flutter/material.dart';

class NavBarIndex extends StatefulWidget {
  final int index;

  const NavBarIndex(this.index, {super.key});

  @override
  State<NavBarIndex> createState() => _NavBarIndexState(index);
}

class _NavBarIndexState extends State<NavBarIndex> {
  int? _currentIndex;
  final int index;

  _NavBarIndexState(this.index);

  int _currentPage = 0;
  var isProfilePage = true;

  @override
  void initState() {
    super.initState();
    _currentPage = index;
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> navigationPage = [
     HomeScreen(),
     MarketHomeScreen(),
     TraderHomeScreen(),
     TraderHome(),
     WalletScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationPage.elementAt(_currentPage),
      bottomNavigationBar: _myBottombar(),
    );
  }

  _myBottombar() {
    return BottomNavigationBar(
        elevation: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: txtfieldclr,
        selectedItemColor: const Color(0xff25DEB0),
        unselectedItemColor: const Color(0xff898886),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: (int num) {
          _currentPage = num;
          setState(() {
            isProfilePage = _currentPage == 0 ? true : false;
          });
        },
        showSelectedLabels: true,
        currentIndex: _currentPage,

        items: const [ 
          BottomNavigationBarItem(
             icon:   Icon(Icons.home),
             label: "Home"
          ),

          BottomNavigationBarItem(
             icon: ImageIcon(AssetImage("assets/images/market.png"), 
             ),
             label: "Markets"
          ),

          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/trade.png"), 
             ),
             label: "Trade"
          ),
          BottomNavigationBarItem(
             icon: ImageIcon(AssetImage("assets/images/copy_trade.png"), 
             ), 
             label: "Copy Trade"
          ),
          BottomNavigationBarItem(
             icon: Icon(Icons.account_balance_wallet),
             label: "Wallets"
          ),
        ]
        );
  }
}