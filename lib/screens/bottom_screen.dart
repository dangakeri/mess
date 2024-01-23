import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:mess/screens/account_page.dart';
import 'package:mess/screens/cart_page.dart';
import 'package:mess/screens/homepage.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int _currentIndex = 0;
  List pages = [
    const HomePage(),
    const CartPage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(BootstrapIcons.house),
          ),
          BottomNavigationBarItem(
            label: "Cart",
            icon: Icon(BootstrapIcons.cart),
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: Icon(BootstrapIcons.person),
          ),
        ],
      ),
    );
  }
}
